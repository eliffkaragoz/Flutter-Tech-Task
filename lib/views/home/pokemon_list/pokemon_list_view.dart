import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../core/components/custom_scaffold.dart';
import '../../../core/data/network/services/pokemon_service.dart';
import '../../../core/components/custom_circular_progress_indicator.dart';
import '../../../core/data/model/pokemon.dart';
import '../../customs/call_pokemon_detail.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  late Future<Pokemon> futurePokemons;

  @override
  void initState() {
    super.initState();
    futurePokemons = PokemonService().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: FutureBuilder<Pokemon>(
        future: futurePokemons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: context.onlyTopPaddingMedium,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: context.dynamicHeight(0.02),
                  crossAxisSpacing: context.dynamicWidth(0.05),
                ),
                itemCount: snapshot.data!.results.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      goToDetailPage(
                          context: context,
                          index: '#00${index + 1}',
                          url: snapshot.data!.results[index].url);
                    },
                    child: CallPokemonDetail(
                      index: '#00${index + 1}',
                      url: snapshot.data!.results[index].url,
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CustomCircularProgressIndicator();
        },
      ),
    );
  }

//Parametreli bir şekilde routes'dan kontrol etmeyi araştırıp düzel!
  goToDetailPage({
    required BuildContext context,
    required String index,
    required String url,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPokemonDetail(
          index: index,
          isDetail: true,
          url: url,
        ),
      ),
    );
  }
}

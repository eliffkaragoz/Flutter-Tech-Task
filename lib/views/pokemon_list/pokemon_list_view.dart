import 'package:flutter/material.dart';
import 'package:pokemon/core/components/custom_scaffold.dart';
import 'package:pokemon/core/data/network/services/pokemon_service.dart';
import 'package:pokemon/views/customs/grid_view.dart';
import 'package:pokemon/views/customs/pokemon_card.dart';
import '../../core/components/custom_circular_progress_indicator.dart';
import '../../core/data/model/pokemon.dart';

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
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: snapshot.data!.results.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    goToDetailPage(
                        context: context,
                        index: '#00$index',
                        url: snapshot.data!.results[index].url);
                  },
                  child: PokemonCard(
                    index: '#00$index',
                    url: snapshot.data!.results[index].url,
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CustomCircularProgressIndicator();
        },
      ),
    );
  }

  goToDetailPage({
    required BuildContext context,
    required String index,
    required String url,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PokemonCard(
          index: index,
          isDetail: true,
          url: url,
        ),
      ),
    );
  }
}

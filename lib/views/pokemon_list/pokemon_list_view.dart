import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pokemon/core/components/button/custom_button_icon.dart';
import 'package:pokemon/core/components/custom_scaffold.dart';
import 'package:pokemon/core/components/text/custom_auto_size_text.dart';
import 'package:pokemon/core/data/enum/shared_keys.dart';
import 'package:pokemon/core/data/network/services/pokemon_service.dart';
import 'package:pokemon/core/init/cache/shared_manager.dart';
import 'package:provider/provider.dart';
import '../../core/components/custom_circular_progress_indicator.dart';
import '../../core/data/model/pokemon.dart';
import '../../core/provider/favorite_list_state.dart';
import '../pokemon_detail/pokemon_detail_view.dart';

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
    FavoriteListState().getFavoriteList(context);
    futurePokemons = PokemonService().getAll();
  }

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteListState.of(context);
    return CustomScaffold(
      body: Padding(
        padding: context.verticalPaddingNormal,
        child: SizedBox(
          height: context.dynamicHeight(1.2),
          child: FutureBuilder<Pokemon>(
            future: futurePokemons,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  itemCount: snapshot.data!.results.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PokemonDetailView(
                              url: snapshot.data!.results[index].url,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        color: Colors.black12,
                        child: ListTile(
                          title: CustomText(
                            text: snapshot.data!.results[index].name.toString(),
                          ),
                          trailing: CustomIconButton(
                            onPressed: () {
                              provider.toggleFavorite(
                                  snapshot.data!.results[index], context);
                              String jsonData = jsonEncode(
                                  Provider.of<FavoriteListState>(context,
                                          listen: false)
                                      .favoriteList);
                              SharedManager.setString(
                                  SharedKeys.favorite, jsonData);
                            },
                            icon:
                                provider.isExist(snapshot.data!.results[index])
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CustomCircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

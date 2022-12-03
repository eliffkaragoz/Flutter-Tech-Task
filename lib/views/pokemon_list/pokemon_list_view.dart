import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kartal/kartal.dart';
import 'package:pokemon/core/components/button/custom_button_icon.dart';
import 'package:pokemon/core/components/custom_scaffold.dart';
import 'package:pokemon/core/components/text/custom_auto_size_text.dart';
import 'package:pokemon/core/data/enum/shared_keys.dart';
import 'package:pokemon/core/data/network/services/pokemon_service.dart';
import 'package:pokemon/core/init/cache/shared_manager.dart';
import 'package:pokemon/core/init/cache/user_cache_manager.dart';
import 'package:pokemon/views/customs/pokemon_card.dart';
import 'package:provider/provider.dart';
import '../../core/components/custom_circular_progress_indicator.dart';
import '../../core/components/custom_viewer_image.dart';
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
  // late final ICacheManager<Result> cacheManager;
  // List<Result>? _items;

  @override
  void initState() {
    super.initState();
    futurePokemons = PokemonService().getAll();
  }

  Future pokemonDetail(String id) async {
    return PokemonService().getPokemonDetail(id);
    //print(pokemonDetailModel!.name);
  }

  editID(String url) async {
    var id = url.substring(34).replaceAll("/", "");
    var pokemonDetail = await PokemonService().getPokemonDetail(id);
    return pokemonDetail;
  }

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteListState.of(context);
    return CustomScaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: Hive.box('favorite').listenable(),
          builder: (context, value, _) {
            return Container(
              height: 50,
              width: double.infinity,
              child: CustomText(
                text: Hive.box('favorite').values.length.toString(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: context.verticalPaddingNormal,
        child: SizedBox(
          height: context.dynamicHeight(1),
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
                        child: Column(
                          children: [
                            PokemonCard(data: snapshot.data!.results[index])
                            // ListTile(
                            //   title: CustomText(
                            //     text: snapshot.data!.results[index].name
                            //         .toString(),
                            //   ),
                            //   trailing: ValueListenableBuilder(
                            //     valueListenable:
                            //         Hive.box('favorite').listenable(),
                            //     builder: (context, box, _) {
                            //       return CustomIconButton(
                            //         onPressed: () {
                            //           // box.clear();
                            //           if (box.containsKey(
                            //               snapshot.data!.results[index].name)) {
                            //             box.delete(
                            //                 snapshot.data!.results[index].name);
                            //           } else {
                            //             box.put(
                            //               snapshot.data!.results[index].name,
                            //               snapshot.data!.results[index],
                            //             );
                            //           }
                            //         },
                            //         icon: box.containsKey(
                            //                 snapshot.data!.results[index].name)
                            //             ? Icons.favorite
                            //             : Icons.favorite_border,
                            //       );
                            //     },
                            //   ),
                            // ),
                          ],
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

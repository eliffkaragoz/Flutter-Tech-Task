import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pokemon/core/components/button/custom_button_icon.dart';
import 'package:pokemon/core/components/text/custom_auto_size_text.dart';
import 'package:pokemon/views/pokemon_list/pokemon_list_view.dart';

import '../../core/data/model/pokemon.dart';
import '../../core/init/cache/user_cache_manager.dart';
import '../../core/provider/favorite_list_state.dart';

class FavoriteListView extends StatefulWidget {
  const FavoriteListView({super.key});

  @override
  State<FavoriteListView> createState() => _FavoriteListViewState();
}

class _FavoriteListViewState extends State<FavoriteListView> {
  // late final ICacheManager<Result> cacheManager;

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteListState.of(context);
    // final favoriteList = provider.cacheManager.getValues();
    return ValueListenableBuilder(
      valueListenable: Hive.box('favorite').listenable(),
      builder: (context, box, child) {
        List datas = List.from(box.values);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: '  ${datas.length.toString()} tane veri var'),
            SizedBox(
              height: 200,
              child: ListView(
                children: [
                  // const Text(""),
                  ...datas.map((e) => ListTile(
                        title: Text(e.name),
                        trailing: CustomIconButton(
                          onPressed: () {
                            box.delete(e.name);
                          },
                          icon: Icons.clear,
                        ),
                      ))
                ],
              ),
            ),
          ],
        );
      },
    );

    // ListView.builder(
    //   itemCount: favoriteList.length,
    //   itemBuilder: (context, index) {
    //     final favoritePokemon = favoriteList[index];
    //     return ListTile(
    //       title: Text(favoritePokemon.name),
    //       trailing: IconButton(
    //         onPressed: () {
    //           // provider.toggleFavorite(pokemon: favoritePokemon, key: 'aa');
    //         },
    //         icon: provider.isExist(favoritePokemon)
    //             ? const Icon(Icons.favorite, color: Colors.red)
    //             : const Icon(Icons.favorite_border),
    //       ),
    //     );
    //   },
    // );
  }
}

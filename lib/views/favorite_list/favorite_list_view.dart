import 'package:flutter/material.dart';
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
  late final ICacheManager<Result> cacheManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteListState.of(context);
    final favoriteList = provider.favoriteList;
    return ListView.builder(
      itemCount: favoriteList.length,
      itemBuilder: (context, index) {
        final favoritePokemon = favoriteList[index];
        return ListTile(
          title: Text(favoritePokemon.name),
          trailing: IconButton(
            onPressed: () {
              provider.toggleFavorite(favoritePokemon, context);
            },
            icon: provider.isExist(favoritePokemon)
                ? const Icon(Icons.favorite, color: Colors.red)
                : const Icon(Icons.favorite_border),
          ),
        );
      },
    );
  }
}

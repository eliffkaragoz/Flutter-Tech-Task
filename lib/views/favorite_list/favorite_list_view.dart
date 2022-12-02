import 'package:flutter/material.dart';
import 'package:pokemon/views/pokemon_list/pokemon_list_view.dart';

import '../../core/provider/favorite_list_state.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key});

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

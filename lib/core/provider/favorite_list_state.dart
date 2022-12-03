import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pokemon/core/init/cache/user_cache_manager.dart';
import 'package:provider/provider.dart';

import '../data/enum/shared_keys.dart';
import '../data/model/pokemon.dart';
import '../init/cache/shared_manager.dart';

class FavoriteListState extends ChangeNotifier {
  int _favoriteItemCount = 0;
  get favoriteItemCount => _favoriteItemCount;

  increaseCount() {
    _favoriteItemCount = Hive.box('favorite').values.length;
    notifyListeners();
  }

  // final ICacheManager<Result> cacheManager = UserCacheManager('favoriteBox');

  // initCache() async {
  //   await cacheManager.init();
  // }

  // toggleFavorite({
  //   required Result pokemon,
  //   required String key,
  // }) {
  //   if (isExist(pokemon)) {
  //     _favoriteList.removeWhere((item) => item.name == pokemon.name);
  //   } else {
  //     //_favoriteList.add(cacheManager.getItem(key)!);
  //     _favoriteList.add(pokemon);
  //   }
  //   notifyListeners();
  // }

  // bool isExist(Result pokemon) {
  //   for (var i = 0; i < _favoriteList.length; i++) {
  //     if (_favoriteList[i].name == pokemon.name) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }

  static FavoriteListState of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteListState>(
      context,
      listen: listen,
    );
  }

  // void getFavoriteList(BuildContext context) {
  //   if (SharedManager.getString(SharedKeys.favorite) != null) {
  //     Provider.of<FavoriteListState>(context, listen: false)
  //         .favoriteList
  //         .clear();
  //     List jsonData =
  //         jsonDecode(SharedManager.getString(SharedKeys.favorite).toString());
  //     for (var favorite in jsonData) {
  //       Provider.of<FavoriteListState>(context, listen: false).favoriteList.add(
  //             Result(name: favorite['name'], url: favorite['url']),
  //           );
  //     }
  //   }
  // }

  // List<FavouritePokemon> favouritePokemonList = [];

  // addToFavorites(FavouritePokemon favouritePokemon) {
  //   favouritePokemonList.add(favouritePokemon);
  //   notifyListeners();
  // }

  // deleteFromFavourites(int pokemonId) {
  //   for (var i = 0; i < favouritePokemonList.length; i++) {
  //     if (pokemonId == favouritePokemonList[i].id) {
  //       favouritePokemonList.removeAt(i);
  //       break;
  //     }
  //   }
  //   notifyListeners();
  // }
}

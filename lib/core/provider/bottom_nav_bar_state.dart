import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../views/home/favorite_list/favorite_list_view.dart';
import '../../views/home/pokemon_list/pokemon_list_view.dart';

class BottomNavigationBarState with ChangeNotifier, DiagnosticableTreeMixin {
  List<Widget> pageOptions = <Widget>[
    const PokemonListScreen(),
    const FavoriteListView(),
  ];

  int _currentPage = 0;

  int get currentPage => _currentPage;

  changePage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}

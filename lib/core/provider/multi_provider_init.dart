import 'package:pokemon/core/provider/bottom_nav_bar_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'favorite_list_state.dart';

class MultiProviderInit {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => BottomNavigationBarState()),
    ChangeNotifierProvider(create: (_) => FavoriteListState()),
  ];
}

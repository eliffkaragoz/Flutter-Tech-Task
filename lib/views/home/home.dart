import 'package:flutter/material.dart';
import '../../core/components/custom_app_bar.dart';
import '../../core/components/custom_chip.dart';

import 'package:provider/provider.dart';

import '../../core/components/custom_bottom_navigation_bar.dart';
import '../../core/init/cache/pokemon_detail_cache_manager.dart';
import '../../core/provider/bottom_nav_bar_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Center(
          child:
              context.watch<BottomNavigationBarState>().pageOptions.elementAt(
                    context.watch<BottomNavigationBarState>().currentPage,
                  ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return CustomAppBar.customAppBar(
      context: context,
      title: context.watch<BottomNavigationBarState>().currentPage == 0
          ? "Pokemon List"
          : 'Favorite List',
      action: ValueListenableBuilder(
        valueListenable: PokemonDetailCacheManager().listenable(),
        builder: (context, value, _) {
          return CustomChip(
              text:
                  'My Favorites:   ${PokemonDetailCacheManager().getValues().length.toString()}');
        },
      ),
    );
  }
}

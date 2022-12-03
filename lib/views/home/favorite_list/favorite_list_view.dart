import 'package:flutter/material.dart';
import '../../../core/components/custom_scaffold.dart';
import '../../customs/pokemon_card.dart';
import 'package:kartal/kartal.dart';

import '../../../core/init/cache/pokemon_detail_cache_manager.dart';

class FavoriteListView extends StatefulWidget {
  const FavoriteListView({super.key});

  @override
  State<FavoriteListView> createState() => _FavoriteListViewState();
}

class _FavoriteListViewState extends State<FavoriteListView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ValueListenableBuilder(
        valueListenable: PokemonDetailCacheManager().listenable(),
        builder: (context, box, child) {
          List datas = List.from(PokemonDetailCacheManager().getValues());
          return Padding(
            padding: context.onlyTopPaddingMedium,
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: context.dynamicHeight(0.02),
                crossAxisSpacing: context.dynamicWidth(0.05),
              ),
              itemCount: datas.length,
              itemBuilder: (context, index) {
                return PokemonCard(
                  index: '#00$index',
                  data: datas[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

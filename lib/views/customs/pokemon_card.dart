import 'package:flutter/material.dart';
import '../../core/components/custom_card.dart';
import '../../core/constants/constant_libary.dart';
import '../../core/components/button/custom_button_icon.dart';
import '../../core/components/custom_viewer_image.dart';
import '../../core/components/text/custom_auto_size_text.dart';
import '../../core/data/model/pokemon_detail.dart';
import '../../core/init/cache/pokemon_detail_cache_manager.dart';

import 'package:kartal/kartal.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({
    super.key,
    required this.data,
    required this.index,
  });

  final PokemonDetailModel? data;
  final String index;

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  PokemonDetailCacheManager pokemonDetailCacheManager =
      PokemonDetailCacheManager();
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: ColorConstant.instance.appGrey1,
      child: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: _buildFavoriteIcon(),
            ),
            Expanded(
              flex: 5,
              child: CustomImageViewer(
                url: widget.data!.sprites.backDefault,
              ),
            ),
            Expanded(
              child: Center(
                child: CustomText(
                  text: widget.data!.name,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: CustomText(
                  text: widget.index,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align _buildFavoriteIcon() {
    return Align(
      alignment: Alignment.bottomRight,
      child: ValueListenableBuilder(
        valueListenable: pokemonDetailCacheManager.listenable(),
        builder: (context, box, _) {
          return CustomIconButton(
            onPressed: favoriteControl,
            icon: pokemonDetailCacheManager.containsKey(widget.data!.name)
                ? Icons.favorite
                : Icons.favorite_border,
          );
        },
      ),
    );
  }

  void favoriteControl() {
    if (pokemonDetailCacheManager.containsKey(widget.data!.name)) {
      pokemonDetailCacheManager.delete(widget.data!.name);
    } else {
      pokemonDetailCacheManager.put(widget.data!.name, widget.data!);
    }
  }
}

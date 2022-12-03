import 'package:flutter/material.dart';
import 'package:pokemon/core/components/custom_card.dart';
import 'package:pokemon/core/components/custom_scaffold.dart';
import 'package:pokemon/core/components/text/text_libary.dart';

import '../../core/components/custom_viewer_image.dart';
import '../../core/data/model/pokemon_detail.dart';

class PokemonDetailView extends StatelessWidget {
  const PokemonDetailView({
    super.key,
    this.data,
    required this.index,
  });
  final PokemonDetailModel? data;
  final String index;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: CustomText(
                  text: data!.name,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: CustomText(
                  text: index,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: CustomCard(
                child: CustomImageViewer(
                  url: data!.sprites.backDefault,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: const [
                      CustomText(
                        text: 'Height : ',
                        fontSize: 20,
                      ),
                      CustomText(
                        text: 'Weight : ',
                        fontSize: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: data!.height.toString(),
                        fontSize: 20,
                      ),
                      CustomText(
                        text: data!.weight.toString(),
                        fontSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

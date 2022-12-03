import 'package:flutter/material.dart';
import '../../core/components/custom_card.dart';
import '../../core/components/custom_chip.dart';
import '../../core/components/custom_scaffold.dart';

import '../../core/components/custom_app_bar.dart';
import '../../core/components/custom_viewer_image.dart';
import '../../core/components/text/custom_auto_size_text.dart';
import '../../core/constants/color_constant.dart';
import '../../core/data/model/pokemon_detail.dart';
import 'package:kartal/kartal.dart';

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
      appBar: _buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.emptySizedHeightBoxLow,
          Expanded(
            child: _buildPageTitle(context),
          ),
          Expanded(
            flex: 3,
            child: CustomCard(
              child: CustomImageViewer(url: data!.sprites.backDefault),
            ),
          ),
          context.emptySizedHeightBoxNormal,
          _buildTitleItem(title: 'Abilities'),
          Expanded(child: _buildAbilityList()),
          _buildTitleItem(title: 'Height'),
          Expanded(
            child: CustomChip(text: data!.height.toString()),
          ),
          _buildTitleItem(title: 'Weight'),
          Expanded(
            child: CustomChip(text: data!.weight.toString()),
          ),
        ],
      ),
    );
  }

  ListView _buildAbilityList() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return context.emptySizedWidthBoxNormal;
      },
      scrollDirection: Axis.horizontal,
      itemCount: data!.abilities.length,
      itemBuilder: (context, index) {
        return CustomChip(text: data!.abilities[index].ability.name);
      },
    );
  }

  Center _buildPageTitle(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: context.dynamicHeight(0.02),
        children: [
          CustomText(
            text: data!.name,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: index,
            fontSize: 20,
          ),
        ],
      ),
    );
  }

  CustomText _buildTitleItem({required String title}) {
    return CustomText(
      text: title,
      fontSize: 20,
      color: ColorConstant.instance.appGrey3,
      fontWeight: FontWeight.bold,
    );
  }

  PreferredSize _buildAppBar(BuildContext context) {
    return CustomAppBar.customAppBar(
      context: context,
      title: '',
      isBackButton: true,
    );
  }
}

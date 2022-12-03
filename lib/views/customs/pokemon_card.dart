import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kartal/kartal.dart';
import 'package:pokemon/core/components/custom_card.dart';
import 'package:pokemon/core/constants/constant_libary.dart';

import '../../core/components/button/button_libary.dart';
import '../../core/components/custom_circular_progress_indicator.dart';
import '../../core/components/custom_viewer_image.dart';
import '../../core/components/text/custom_auto_size_text.dart';
import '../../core/data/model/pokemon_detail.dart';
import '../../core/data/network/services/pokemon_service.dart';
import '../pokemon_detail/pokemon_detail_view.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({
    super.key,
    required this.url,
    this.isDetail,
    required this.index,
  });

  final dynamic url;
  final bool? isDetail;
  final String index;
  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  Future<PokemonDetailModel>? pokemon;

  Future<void> pokemonDetail(String id) async {
    pokemon = PokemonService().getPokemonDetail(id);
  }

  editID(String url) async {
    var id = url.substring(34).replaceAll("/", "");
    await pokemonDetail(id);
  }

  @override
  void initState() {
    super.initState();
    editID(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingNormal,
      child: FutureBuilder<PokemonDetailModel>(
        future: pokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return widget.isDetail == null
                ? BuildCard(
                    index: widget.index,
                    data: snapshot.data,
                  )
                : PokemonDetailView(
                    index: widget.index,
                    data: snapshot.data,
                  );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CustomCircularProgressIndicator();
        },
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  const BuildCard({
    super.key,
    required this.data,
    required this.index,
  });

  final PokemonDetailModel? data;
  final String index;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: ColorConstant.instance.appGrey1,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: CustomText(
                text: index,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: CustomImageViewer(
                    url: data!.sprites.backDefault,
                  ),
                ),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: Hive.box('favorite').listenable(),
                    builder: (context, box, _) {
                      return CustomIconButton(
                        onPressed: () {
                          if (box.containsKey(data!.name)) {
                            box.delete(data!.name);
                          } else {
                            box.put(
                              data!.name,
                              data!,
                            );
                          }
                        },
                        icon: box.containsKey(data!.name)
                            ? Icons.favorite
                            : Icons.favorite_border,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomText(text: data!.name),
          ),
        ],
      ),
    );
  }
}

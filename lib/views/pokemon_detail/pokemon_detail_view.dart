import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pokemon/core/components/custom_scaffold.dart';
import 'package:pokemon/core/components/custom_viewer_image.dart';

import '../../core/components/custom_circular_progress_indicator.dart';
import '../../core/data/model/pokemon_detail.dart';
import '../../core/data/network/services/pokemon_service.dart';

class PokemonDetailView extends StatefulWidget {
  const PokemonDetailView({
    super.key,
    required this.url,
    // required this.data,
  });
  final String url;
  @override
  State<PokemonDetailView> createState() => _PokemonDetailViewState();
}

class _PokemonDetailViewState extends State<PokemonDetailView> {
  Future<PokemonDetailModel>? pokemon;

  Future<void> pokemonDetail(String id) async {
    pokemon = PokemonService().getPokemonDetail(id);
    //print(pokemonDetailModel!.name);
  }

  editID(String url) async {
    var id = url.substring(34).replaceAll("/", "");
    await pokemonDetail(id);
    print(id);
  }

  @override
  void initState() {
    super.initState();
    editID(widget.url);
  }

  bool addedToFavourites = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: context.verticalPaddingNormal,
        child: SizedBox(
          height: context.dynamicHeight(1.2),
          child: FutureBuilder<PokemonDetailModel>(
            future: pokemon,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Container(
                      height: 300,
                      color: Colors.pink,
                      child: ListTile(
                        title: CustomImageViewer(
                          url: snapshot.data!.sprites.backDefault,
                        ),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CustomCircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

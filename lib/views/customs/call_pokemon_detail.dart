import 'package:flutter/material.dart';
import 'pokemon_card.dart';
import '../../core/components/custom_circular_progress_indicator.dart';
import '../../core/data/model/pokemon_detail.dart';
import '../../core/data/network/services/pokemon_service.dart';
import '../pokemon_detail/pokemon_detail_view.dart';

class CallPokemonDetail extends StatefulWidget {
  const CallPokemonDetail({
    super.key,
    required this.url,
    this.isDetail,
    required this.index,
  });

  final dynamic url;
  final bool? isDetail;
  final String index;
  @override
  State<CallPokemonDetail> createState() => _CallPokemonDetailState();
}

class _CallPokemonDetailState extends State<CallPokemonDetail> {
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
    return FutureBuilder<PokemonDetailModel>(
      future: pokemon,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return widget.isDetail == null
              ? PokemonCard(
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
    );
  }
}

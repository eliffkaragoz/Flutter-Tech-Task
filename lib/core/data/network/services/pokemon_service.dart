import 'package:pokemon/core/data/model/pokemon.dart';
import 'package:pokemon/core/data/model/pokemon_detail.dart';

import '../../../base/base_service.dart';

class PokemonService extends IRetrofitService {
  @override
  Future<Pokemon> getAll() {
    return client.getAllPokemons();
  }

  Future<PokemonDetailModel> getPokemonDetail(String id) {
    return client.getPokemonDetail(id);
  }
}

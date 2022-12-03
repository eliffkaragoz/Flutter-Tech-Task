import '../../model/pokemon.dart';
import '../../model/pokemon_detail.dart';

import '../../../base/retrofit_service.dart';

class PokemonService extends IRetrofitService {
  @override
  Future<Pokemon> getAll() {
    return client.getAllPokemons();
  }

  Future<PokemonDetailModel> getPokemonDetail(String id) {
    return client.getPokemonDetail(id);
  }
}

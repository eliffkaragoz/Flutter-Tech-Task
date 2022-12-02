import 'package:dio/dio.dart';
import 'package:pokemon/core/data/model/pokemon.dart';
import 'package:pokemon/core/data/model/pokemon_detail.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

const String baseUrl = "https://pokeapi.co/api/v2";

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/pokemon")
  Future<Pokemon> getAllPokemons();

  @GET("/pokemon/{id}")
  Future<PokemonDetailModel> getPokemonDetail(@Path("id") String id);
}

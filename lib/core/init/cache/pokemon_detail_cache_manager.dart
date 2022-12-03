import 'package:hive/hive.dart';

import '../../base/cache_manager.dart';
import '../../data/enum/enum_cache.dart';
import '../../data/model/pokemon_detail.dart';

class PokemonDetailCacheManager extends ICacheManager<PokemonDetailModel> {
  @override
  Future<void> put(String key, PokemonDetailModel data) {
    return Hive.box(EnumCache.favoriteBox.toString()).put(key, data);
  }

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PokemonDetailModelAdapter());
      Hive.registerAdapter(AbilityAdapter());
      Hive.registerAdapter(SpeciesAdapter());
      Hive.registerAdapter(GameIndexAdapter());
      Hive.registerAdapter(MoveAdapter());
      Hive.registerAdapter(GenerationVAdapter());
      Hive.registerAdapter(GenerationIvAdapter());
      Hive.registerAdapter(VersionsAdapter());
      Hive.registerAdapter(SpritesAdapter());
      Hive.registerAdapter(GenerationIAdapter());
      Hive.registerAdapter(RedBlueAdapter());
      Hive.registerAdapter(GenerationIiAdapter());
      Hive.registerAdapter(CrystalAdapter());
      Hive.registerAdapter(GoldAdapter());
      Hive.registerAdapter(GenerationIiiAdapter());
      Hive.registerAdapter(VersionGroupDetailAdapter());
      Hive.registerAdapter(EmeraldAdapter());
      Hive.registerAdapter(HomeAdapter());
      Hive.registerAdapter(GenerationViiAdapter());
      Hive.registerAdapter(DreamWorldAdapter());
      Hive.registerAdapter(GenerationViiiAdapter());
      Hive.registerAdapter(OtherAdapter());
      Hive.registerAdapter(OfficialArtworkAdapter());
      Hive.registerAdapter(StatAdapter());
      Hive.registerAdapter(MyTypeAdapter());
    }
  }
}

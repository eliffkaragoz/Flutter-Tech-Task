import 'package:hive_flutter/hive_flutter.dart';

import '../../data/model/pokemon_detail.dart';

class CacheManager {
  openBox() async {
    await Hive.openBox('favorite');
  }

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

// import 'package:flutter/foundation.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// import 'package:pokemon/core/data/model/pokemon.dart';

// abstract class ICacheManager<T> {
//   final String key;
//   Box<Result>? _box;

//   ICacheManager(this.key);
//   Future<void> init() async {
//     registerAdapters();
//     if (!(_box?.isOpen ?? false)) {
//       _box = await Hive.openBox(key);
//     }
//   }

//   void registerAdapters();

//   T? getItem(String key);
//   getValues();
//   Future<void> putItem(String key, T item);
//   Future<void> delete(String key);
//   Future<void> add(Result value);
//   Result? get(String key);
//   listenable();
// }

// class UserCacheManager extends ICacheManager<Result> {
//   UserCacheManager(String key) : super(key);

//   @override
//   Result? getItem(String key) {
//     return _box!.get(key);
//   }

//   @override
//   getValues() {
//     return _box!.values;
//   }

//   @override
//   Future<void> putItem(String key, Result item) async {
//     await _box?.put(key, item);
//   }

//   @override
//   Future<void> delete(String key) async {
//     await _box!.delete(key);
//   }

//   Result? get(String key) {
//     _box!.get(key);
//   }

//   @override
//   Future<void> add(Result value) async {
//     await _box!.add(value);
//   }

//   @override
//   listenable() {
//     _box!.listenable();
//   }

//   @override
//   void registerAdapters() {
//     if (!Hive.isAdapterRegistered(0)) {
//       Hive.registerAdapter(ResultAdapter());
//     }
//   }
// }




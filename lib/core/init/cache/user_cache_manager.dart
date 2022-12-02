import 'package:hive_flutter/hive_flutter.dart';

import 'package:pokemon/core/data/model/pokemon.dart';

abstract class ICacheManager<T> {
  final String key;
  Box<Result>? _box;

  ICacheManager(this.key);
  Future<void> init() async {
    registerAdapters();
    if (!(_box?.isOpen ?? false)) {
      _box = await Hive.openBox(key);
    }
  }

  void registerAdapters();

  T? getItem(String key);
  Iterable<Result> getValues();
  Future<void> putItem(String key, T item);
}

class UserCacheManager extends ICacheManager<Result> {
  UserCacheManager(String key) : super(key);

  @override
  Result? getItem(String key) {
    return _box!.get(key);
  }

  @override
  Iterable<Result> getValues() {
    return _box!.values;
  }

  @override
  Future<void> putItem(String key, Result item) async {
    await _box?.put(key, item);
  }

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(ResultAdapter());
    }
  }
}

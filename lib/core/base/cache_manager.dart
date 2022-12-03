import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/enum/enum_cache.dart';

abstract class ICacheManager<T> {
  openBox() async {
    await Hive.openBox(EnumCache.favoriteBox.toString());
  }

  void registerAdapters();
  ValueListenable<Box<dynamic>> listenable() {
    return Hive.box(EnumCache.favoriteBox.toString()).listenable();
  }

  bool containsKey(String key) {
    return Hive.box(EnumCache.favoriteBox.toString()).containsKey(key);
  }

  delete(String key) {
    return Hive.box(EnumCache.favoriteBox.toString()).delete(key);
  }

  Iterable<dynamic> getValues() {
    return Hive.box(EnumCache.favoriteBox.toString()).values;
  }

  Future<void> put(String key, T data);
}

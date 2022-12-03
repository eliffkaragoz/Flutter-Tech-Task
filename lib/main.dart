import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokemon/core/init/cache/user_cache_manager.dart';

import '../../../core/constants/constant_libary.dart';
import 'core/app.dart';
import 'core/data/model/pokemon_detail.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ColorConstant.instance.appBlack,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  CacheManager().registerAdapters();
  CacheManager().openBox();
  runApp(const App());
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/constants/constant_libary.dart';
import 'core/app.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: ColorConstant.instance.appBlack,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
//  await Hive.openBox('testBox');
  runApp(const App());
}

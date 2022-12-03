import 'package:flutter/material.dart';

import '../../constants/constant_libary.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(color: ColorConstant.instance.appGrey3),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstant.instance.appGrey2,
        iconTheme: IconThemeData(
          color: ColorConstant.instance.appBlack,
        ),
        toolbarTextStyle: TextStyle(color: ColorConstant.instance.appBlack),
        titleTextStyle: TextStyle(color: ColorConstant.instance.appBlack),
      ),
      scaffoldBackgroundColor: ColorConstant.instance.appGrey2,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorConstant.instance.appGrey2,
      ),
    );
  }
}

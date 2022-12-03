import 'package:flutter/material.dart';

import '../../constants/constant_libary.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(color: ColorConstant.instance.appBlue),
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
          selectedIconTheme: IconThemeData(
            color: ColorConstant.instance.appBlue,
          ),
          selectedItemColor: ColorConstant.instance.appBlue),
      backgroundColor: ColorConstant.instance.appGrey2,
    );
  }
}

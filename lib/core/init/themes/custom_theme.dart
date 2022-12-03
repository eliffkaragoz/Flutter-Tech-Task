import 'package:flutter/material.dart';

import '../../constants/constant_libary.dart';

class CustomTheme {
  static ThemeData customThemeData(BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(color: ColorConstant.instance.appBlue),
      appBarTheme: _buildAppBarTheme(),
      scaffoldBackgroundColor: ColorConstant.instance.appGrey2,
      bottomNavigationBarTheme: _buildBottomNavigationBarThemeData(),
      backgroundColor: ColorConstant.instance.appGrey2,
    );
  }

  static BottomNavigationBarThemeData _buildBottomNavigationBarThemeData() {
    return BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: ColorConstant.instance.appBlue,
        ),
        selectedItemColor: ColorConstant.instance.appBlue);
  }

  static AppBarTheme _buildAppBarTheme() {
    return AppBarTheme(
      backgroundColor: ColorConstant.instance.appGrey2,
      iconTheme: IconThemeData(
        color: ColorConstant.instance.appBlack,
      ),
      toolbarTextStyle: TextStyle(color: ColorConstant.instance.appBlack),
      titleTextStyle: TextStyle(color: ColorConstant.instance.appBlack),
    );
  }
}

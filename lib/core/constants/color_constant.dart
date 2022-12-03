import 'package:flutter/material.dart';

class ColorConstant {
  static final ColorConstant _instance = ColorConstant._init();
  static ColorConstant get instance => _instance;
  ColorConstant._init();

  Color appBlack = const Color.fromRGBO(0, 0, 0, 1);
  Color appGrey1 = const Color(0xFFe5e5e5);
  Color appGrey2 = const Color.fromARGB(255, 243, 243, 243);
  Color appGrey3 = const Color.fromARGB(255, 118, 117, 117);
  Color appBlue = const Color.fromARGB(255, 20, 34, 69);
  Color appWhite = const Color(0xFFFFFFFF);
  Color appRed = const Color(0xFFF52400);
  Color facebookLogoColor = const Color(0xFF425992);
  Color transparent = Colors.transparent;
  Color textFormFieldBorderColor = const Color(0xFFE0E0E0);

  Color appBlack2 = const Color.fromARGB(255, 17, 17, 17);
}

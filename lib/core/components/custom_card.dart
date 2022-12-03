import 'package:flutter/material.dart';
import 'package:pokemon/core/constants/radius_constant.dart';

import '../constants/color_constant.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.color,
    this.elevation,
    this.height,
    this.width,
    this.margin,
    this.shadowColor,
    this.borderRadius,
    this.borderSideColor,
  }) : super(key: key);

  final Color? color;
  final Color? shadowColor;
  final Color? borderSideColor;
  final Widget child;
  final double? elevation;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 0,
      color: ColorConstant.instance.appGrey1,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderSideColor ?? Colors.transparent),
        borderRadius: RadiusConstant.instance.cardBorderRadius,
      ),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height,
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.isDrawer,
  });
  final Widget body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? isDrawer;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
        ),
        backgroundColor: backgroundColor,
        bottomNavigationBar: bottomNavigationBar,
        body: Center(
          child: Padding(
            padding: context.horizontalPaddingMedium,
            child: body,
          ),
        ),
      ),
    );
  }
}

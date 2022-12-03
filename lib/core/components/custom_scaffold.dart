import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.isDrawer,
    this.appBar,
  });
  final Widget body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool? isDrawer;
  final AppBar? appBar;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
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

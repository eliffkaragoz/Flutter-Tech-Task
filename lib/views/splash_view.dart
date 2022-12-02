import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokemon/core/components/custom_viewer_image.dart';

import '../../../../../core/constants/constant_libary.dart';
import '../../../core/components/custom_scaffold.dart';

import '../../../core/init/routes/custom_navigator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2),
        () => CustomNavigator.goToScreen(context, "/HomeView"));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: ColorConstant.instance.appBlack,
      body: const CustomImageViewer(
        alignment: Alignment.center,
        assetPath: "assets/logo.png",
      ),
    );
  }
}

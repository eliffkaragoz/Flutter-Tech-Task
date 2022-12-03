import 'package:flutter/material.dart';
import '../../../views/home/home.dart';

import '../../../views/splash_view.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _buildMaterialPageRoute(const SplashView());

      case "/HomeView":
        return _buildMaterialPageRoute(const HomeView());

      default:
        return _buildMaterialPageRoute(
          Text('No route defined for ${settings.name}'),
        );
    }
  }

  static MaterialPageRoute<dynamic> _buildMaterialPageRoute(Widget screen) {
    return MaterialPageRoute(
      builder: (BuildContext context) => screen,
    );
  }
}

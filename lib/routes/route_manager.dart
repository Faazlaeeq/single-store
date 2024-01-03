import 'package:flutter/material.dart';
import 'package:single_store/screens/home_screen.dart';
import 'package:single_store/screens/onboard_screen.dart';
import 'package:single_store/screens/open_screen.dart';

class RoutesManager {
  static const String home = "/";
  static const String open = "/open";
  static const String onboard = "/onboard";

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (home):
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case (open):
        return MaterialPageRoute(
          builder: (context) => const OpenScreen(),
        );
      case (onboard):
        return MaterialPageRoute(
          builder: (context) => const OnBoardScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}

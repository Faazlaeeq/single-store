import 'package:flutter/material.dart';
import 'package:single_store/screens/home_screen.dart';

class RoutesManager {
  static const String home = "/";

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ("/"):
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}

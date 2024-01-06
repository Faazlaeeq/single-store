import 'package:flutter/material.dart';
import 'package:single_store/screens/Auth/auth_successfull.dart';
import 'package:single_store/screens/Auth/login_screen.dart';
import 'package:single_store/screens/Auth/signup_screen.dart';
import 'package:single_store/screens/Home/home_screen.dart';
import 'package:single_store/screens/home_screen.dart';
import 'package:single_store/screens/onboard_screen.dart';
import 'package:single_store/screens/open_screen.dart';

class RoutesManager {
  static const String home = "/";
  static const String open = "/open";
  static const String onboard = "/onboard";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String authSuccessfull = "/authSuccessfull";

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (home):
        return MaterialPageRoute(
          //TODO: change this to home screen
          builder: (context) => HomeScreen(),
        );
      case (open):
        return MaterialPageRoute(
          builder: (context) => const OpenScreen(),
        );
      case (onboard):
        return MaterialPageRoute(
          builder: (context) => OnBoardScreen(),
        );
      case (login):
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case (signup):
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      case (authSuccessfull):
        return MaterialPageRoute(
          builder: (context) => AuthSuccessfullScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => MainScreen());
    }
  }
}

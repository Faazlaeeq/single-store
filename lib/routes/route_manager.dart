import 'package:flutter/material.dart';
import 'package:single_store/models/product_card.dart';
import 'package:single_store/screens/Auth/auth_successfull.dart';
import 'package:single_store/screens/Auth/login_screen.dart';
import 'package:single_store/screens/Auth/signup_screen.dart';
import 'package:single_store/screens/Cart/cart_screen.dart';
import 'package:single_store/screens/Home/category_screen.dart';
import 'package:single_store/screens/Home/filter_screen.dart';
import 'package:single_store/screens/Home/home_screen.dart';
import 'package:single_store/screens/Home/product_display_screen.dart';
import 'package:single_store/screens/Home/products_by_cat_screen.dart';
import 'package:single_store/screens/onboard_screen.dart';
import 'package:single_store/screens/open_screen.dart';

class RoutesManager {
  static const String home = "/";
  static const String open = "/open";
  static const String onboard = "/onboard";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String authSuccessfull = "/authSuccessfull";
  static const String category = "/home/category";
  static const String productsByCat = "/home/category/productsByCat";
  static const String productDisplay = "/home/productDisplay";
  static const String cart = "/cart";
  static const String filter = "/filter";

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
          builder: (context) => const AuthSuccessfullScreen(),
        );
      case (category):
        return MaterialPageRoute(
          builder: (context) => CatrgoryScreen(),
        );
      case (productsByCat):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ProductsByCatScreen(
              productCardItems: settings.arguments as List<ProductCard>),
        );

      case (productDisplay):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ProductDisplayScreen(),
        );
      case (cart):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => CartScreen(),
        );

      case (filter):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => FilterScreen(),
        );
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}

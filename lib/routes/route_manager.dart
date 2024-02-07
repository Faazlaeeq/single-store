import 'package:flutter/material.dart';
import 'package:single_store/models/product_card.dart';
import 'package:single_store/screens/Auth/auth_successfull.dart';
import 'package:single_store/screens/Auth/login_screen.dart';
import 'package:single_store/screens/Auth/signup_screen.dart';
import 'package:single_store/screens/Cart/cart_screen.dart';
import 'package:single_store/screens/Home/category_screen.dart';
import 'package:single_store/screens/Home/discounts_screen.dart';
import 'package:single_store/screens/Home/filter_screen.dart';
import 'package:single_store/screens/Home/home_screen.dart';
import 'package:single_store/screens/Home/product_display_screen.dart';
import 'package:single_store/screens/Home/products_by_cat_screen.dart';
import 'package:single_store/screens/Home/review_screen.dart';
import 'package:single_store/screens/Home/wishlist_screen.dart';
import 'package:single_store/screens/Order/my_order_screen.dart';
import 'package:single_store/screens/Order/order_detail_screen.dart';
import 'package:single_store/screens/Order/order_tracking.dart';
import 'package:single_store/screens/Order/payment_screen.dart';
import 'package:single_store/screens/Profile/profile_screen.dart';
import 'package:single_store/screens/Profile/profile_settings_screen.dart';
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
  static const String wishlist = "/wishlist";
  static const String filter = "/filter";
  static const String review = "/review";
  static const String orderDetail = "/orderDetail";
  static const String orderTracking = "/orderTracking";
  static const String discounts = "/discounts";
  static const String profile = "/profile";
  static const String profileSettings = "/profileSettings";
  static const String myOrders = "/myOrders";
  static const String payment = "/payment";

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
      case (login):
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
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
          builder: (context) => const CartScreen(),
        );

      case (filter):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const FilterScreen(),
        );

      case (wishlist):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const WishlistScreen(),
        );
      case (review):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ReviewScreen(),
        );

      case (orderDetail):
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => OrderDetailScreen(),
        );

      case (orderTracking):
        return MaterialPageRoute(
            settings: settings,
            builder: (context) => const OrderTrackingScreen());
      case (discounts):
        return MaterialPageRoute(
            settings: settings, builder: (context) => DiscountsScreen());
      case (profile):
        return MaterialPageRoute(
            settings: settings, builder: (context) => ProfileScreen());
      case (profileSettings):
        return MaterialPageRoute(
            settings: settings, builder: (context) => ProfileSettingsScreen());
      case (myOrders):
        return MaterialPageRoute(
            settings: settings, builder: (context) => const MyOrderScreen());
      case (payment):
        return MaterialPageRoute(
            settings: settings, builder: (context) => const PaymentScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}

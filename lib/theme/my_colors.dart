import 'package:flutter/material.dart';

class MyColors {
  static const Color secondaryColor = Colors.white;
  static final MaterialStateProperty<Color> mSecondaryColor =
      MaterialStateProperty.all(Colors.white);
  static const Color primaryColor = Colors.black;
  static final MaterialStateProperty<Color> mPrimaryColor =
      MaterialStateProperty.all(Colors.black);
  static const Color accentColor = Color.fromRGBO(255, 255, 255, 0.5);
  static final MaterialStateProperty<Color> mAccentColor =
      MaterialStateProperty.all(const Color.fromRGBO(255, 255, 255, 0.5));
}

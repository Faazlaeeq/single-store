import 'package:flutter/material.dart';

class MyColors {
  static const Color secondaryColor = Colors.white;
  static final MaterialStateProperty<Color> mSecondaryColor =
      MaterialStateProperty.all(Colors.white);
  static const Color primaryColor = Colors.black;
  static final MaterialStateProperty<Color> mPrimaryColor =
      MaterialStateProperty.all(Colors.black);
  static const Color accentColor = Color.fromRGBO(255, 255, 255, 0.5);

  static const Color accentColorDark = Color.fromRGBO(0, 0, 0, 0.2);

  static const Color subtitleColor = Color.fromRGBO(102, 102, 102, 1);
  static final MaterialStateProperty<Color> mSubtitleColor =
      MaterialStateProperty.all(const Color.fromRGBO(102, 102, 102, 1));
}

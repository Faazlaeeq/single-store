import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';

ThemeData myTheme(BuildContext context) {
  final filledButtonTheme = FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
      foregroundColor: MaterialStateProperty.all(MyColors.secondaryColor),
      overlayColor: MaterialStateProperty.all(MyColors.accentColor),
    ),
  );

  final outlineButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(MyColors.secondaryColor),
      overlayColor: MaterialStateProperty.all(MyColors.accentColor),
    ),
  );

  final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(MyColors.primaryColor),
      overlayColor: MaterialStateProperty.all(MyColors.accentColor),
    ),
  );
  final textTheme = Theme.of(context).textTheme.apply(
        bodyColor: MyColors.primaryColor,
        displayColor: MyColors.primaryColor,
        fontFamily: 'Mont',
      );

  return ThemeData.light(useMaterial3: true).copyWith(
    primaryColor: MyColors.primaryColor,
    filledButtonTheme: filledButtonTheme,
    outlinedButtonTheme: outlineButtonTheme,
    textButtonTheme: textButtonTheme,
    textTheme: textTheme,
  );
}

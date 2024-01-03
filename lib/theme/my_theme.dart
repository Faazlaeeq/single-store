import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';

ThemeData myTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Mont',
        ),
    useMaterial3: true,
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
        foregroundColor: MaterialStateProperty.all(MyColors.secondaryColor),
        overlayColor: MaterialStateProperty.all(MyColors.accentColor),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

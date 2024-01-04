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
    backgroundColor: MaterialStateProperty.all(MyColors.secondaryColor),
  ));

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(MyColors.primaryColor),
      foregroundColor: MaterialStateProperty.all(MyColors.secondaryColor),
      overlayColor: MaterialStateProperty.all(MyColors.accentColor),
    ),
  );
  final textTheme = Theme.of(context).textTheme.copyWith(
        titleSmall: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        titleMedium: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Mont',
            ),
        bodyMedium: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Mont',
            ),
        bodyLarge: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Mont',
            ),
        labelSmall: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(fontFamily: 'Mont', color: MyColors.subtitleColor),
        labelMedium: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontFamily: 'Mont',
              color: MyColors.subtitleColor,
            ),
        labelLarge: Theme.of(context).textTheme.labelLarge!.copyWith(
              fontFamily: 'Mont',
              color: MyColors.subtitleColor,
            ),
        displaySmall: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              fontFamily: 'Mont',
            ),
        displayMedium: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        displayLarge: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        headlineSmall: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        headlineMedium: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w700,
              fontFamily: 'Mont',
            ),
        headlineLarge: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: 'Mont',
            ),
      );

  return ThemeData.light(useMaterial3: true).copyWith(
    primaryColor: MyColors.primaryColor,
    filledButtonTheme: filledButtonTheme,
    outlinedButtonTheme: outlineButtonTheme,
    textButtonTheme: textButtonTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    textTheme: textTheme,
    scaffoldBackgroundColor: MyColors.secondaryColor,
    primaryTextTheme: textTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: MyColors.primaryColor,
      foregroundColor: MyColors.secondaryColor,
      shape: CircleBorder(),
    ),
  );
}

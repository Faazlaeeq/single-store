import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class CommonWidgets {
  static Widget headingText(BuildContext context, String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
      ),
    );
  }

  static Widget roundedButton(
      {required BuildContext context,
      required String text,
      required double widthInPercent,
      VoidCallback? onPressed,
      String? routeName}) {
    return ElevatedButton(
      onPressed: onPressed ??
          () {
            Navigator.of(context).pushNamed(routeName!);
          },
      child: SizedBox(
        width: width(context) * (widthInPercent / 100),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: MyColors.secondaryColor),
            )
          ],
        ),
      ),
    );
  }
}

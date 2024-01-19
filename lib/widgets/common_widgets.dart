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

  static Widget customListTile({
    required BuildContext context,
    String? imageUrl,
    String? name,
    String? subtitle,
    Widget? titleEnd,
    String? description,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    TextStyle? subtitleStyle,
    double? heightImg,
    double? widthImg,
  }) {
    return Container(
        margin: const EdgeInsets.symmetric(
            horizontal: padding2, vertical: padding2),
        padding: const EdgeInsets.symmetric(
            horizontal: padding1, vertical: padding1),
        decoration: BoxDecoration(
          color: MyColors.secondaryColor,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [MyColors.spreadedShadow],
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
          children: [
            imageUrl == null
                ? const SizedBox()
                : Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(imageUrl), fit: BoxFit.cover)),
                    height: heightImg ?? 60,
                    width: widthImg ?? 60,
                  ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding2, vertical: 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(name ?? "",
                                style: Theme.of(context).textTheme.titleSmall!),
                            SizedBox(child: titleEnd)
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          subtitle ?? "",
                          style: subtitleStyle ??
                              Theme.of(context).textTheme.labelSmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.subtitleColor2),
                        ),
                      ),
                      description == null
                          ? const SizedBox()
                          : Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                description,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(color: MyColors.primaryColor),
                              ),
                            ),
                    ]),
              ),
            ),
          ],
        ));
  }

  static Widget listTileWithButton(
      {required BuildContext context,
      String? iconUrl,
      String? title,
      String? subtitle,
      String? buttonText,
      VoidCallback? onPressed}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      title: Text(title ?? "Total Price",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 9)),
      subtitle: subtitle == null
          ? const SizedBox()
          : Text(
              subtitle,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
            ),
      trailing: ElevatedButton(
        onPressed: onPressed ??
            () {
              Navigator.of(context).pushNamed(RoutesManager.cart);
            },
        child: SizedBox(
          width: width(context) * .35,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconUrl == null
                  ? const SizedBox()
                  : ImageIcon(
                      AssetImage(iconUrl),
                      size: 16,
                    ),
              const SizedBox(
                width: 10,
              ),
              Text(
                buttonText ?? "Add to Cart",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: MyColors.secondaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}

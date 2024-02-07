import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';

class DiscountsScreen extends StatelessWidget {
  DiscountsScreen({super.key});
  final List<Map<String, String>> pageContent = [
    {
      "title": "50% Off",
      "subtitle": "On everything today",
      "code": "With code: rikafashion2021",
      "buttonText": "Get Now",
      "imgPath": "assets/images/banner-bg-img.png"
    },
    {
      "title": "50% Off",
      "subtitle": "On everything today",
      "code": "With code: rikafashion2021",
      "buttonText": "Get Now",
      "imgPath": "assets/images/banner-bg-img2.png"
    },
    {
      "title": "50% Off",
      "subtitle": "On everything today",
      "code": "With code: rikafashion2021",
      "buttonText": "Get Now",
      "imgPath": "assets/images/banner-bg-img3.png"
    },
    {
      "title": "50% Off",
      "subtitle": "On everything today",
      "code": "With code: rikafashion2021",
      "buttonText": "Get Now",
      "imgPath": "assets/images/banner-bg-img4.png"
    }
  ];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(
            scaffoldKey: scaffoldKey,
            showTrailingIcon: false,
            leadingIcon: "assets/icons/arrow-smooth-left.png",
            onpressed: () => Navigator.of(context).pop()),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: padding1),
          width: double.infinity,
          child: ListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: padding4, vertical: padding1),
                    child:
                        CommonWidgets.headingText(context, "Discounts Offer"),
                  );
                } else {
                  return Container(
                    height: 160,
                    padding: const EdgeInsets.symmetric(
                        horizontal: padding3, vertical: padding2),
                    margin: const EdgeInsets.symmetric(
                        horizontal: padding3, vertical: padding2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                pageContent[index - 1]["imgPath"]!))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pageContent[index - 1]['title']!,
                              style:
                                  Theme.of(context).textTheme.headlineMedium!),
                          Text(pageContent[index - 1]['subtitle']!,
                              style: Theme.of(context).textTheme.bodyLarge!),
                          const SizedBox(height: 11),
                          Text(pageContent[index - 1]['code']!,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      color: MyColors.subtitleColor,
                                      fontWeight: FontWeight.bold)),
                          const Expanded(child: SizedBox()),
                          FilledButton(
                            onPressed: () {},
                            child: Text(pageContent[index - 1]['buttonText']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: MyColors.forgroundWhiteColor)),
                          )
                        ]),
                  );
                }
              },
              itemCount: pageContent.length + 1,
              scrollDirection: Axis.vertical),
        ));
  }
}

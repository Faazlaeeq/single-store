import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_bottom_navigationbar.dart';

class CatrgoryScreen extends StatelessWidget {
  CatrgoryScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final pageContent = [
    {
      "icon": "assets/icons/new-arrival.png",
      "title": "New Arrival",
      "subTitle": "208 Products"
    },
    {
      "icon": "assets/icons/clothes.png",
      "title": "Clothes",
      "subTitle": "358 Products"
    },
    {
      "icon": "assets/icons/bag.png",
      "title": "Bags",
      "subTitle": "330 Products"
    },
    {
      "icon": "assets/icons/shoe.png",
      "title": "Shoes",
      "subTitle": "230 Products"
    },
    {
      "icon": "assets/icons/electronics.png",
      "title": "New Arrival",
      "subTitle": "130 Products"
    },
    {
      "icon": "assets/icons/jewelery.png",
      "title": "Jewelery",
      "subTitle": "87 Products"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        scaffoldKey: scaffoldKey,
        actionBgColor: Colors.transparent,
        actionIcon: "assets/icons/search.png",
        leadingIcon: "assets/icons/arrow-smooth-left.png",
        padding: padding2,
        onpressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(padding5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Categories",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: padding3,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: height(context) * .7),
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    icon: pageContent[index]["icon"]!,
                    title: pageContent[index]["title"]!,
                    subTitle: pageContent[index]["subTitle"]!,
                  );
                },
                itemCount: pageContent.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(key: scaffoldKey),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    this.title = "New Arrival",
    this.subTitle = "208 Products",
    this.icon = "assets/icons/new-arrival.png",
  });
  final String icon;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: width(context),
      margin: const EdgeInsets.symmetric(vertical: padding1),
      padding: const EdgeInsets.symmetric(horizontal: padding5),
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 25,
            width: 25,
          ),
          const SizedBox(
            width: padding3,
          ),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: MyColors.secondaryColor)),
          const Expanded(child: SizedBox()),
          Text(subTitle,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: MyColors.secondaryColor, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

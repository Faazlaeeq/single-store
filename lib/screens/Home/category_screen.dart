import 'package:flutter/material.dart';
import 'package:single_store/models/product_card.dart';
import 'package:single_store/routes/route_manager.dart';
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

  final itemsProduct = [
    <ProductCard>[
      ProductCard(
        name: "Elegant  Dress",
        description: "Experience the grace of nature .",
        image: "assets/images/shirt-1.png",
        price: 129.99,
      ),
      ProductCard(
        name: "Galactic Voyager ",
        description: "Embark on a cosmic journey.",
        image: "assets/images/shirt-2.png",
        price: 79.99,
      ),
      ProductCard(
        name: "Ocean Mist ",
        description: "A scent that captures .",
        image: "assets/images/shirt-3.png",
        price: 49.99,
      ),
      ProductCard(
        name: "Vintage Vinyl",
        description: "Step back in time.",
        image: "assets/images/shirt-4.png",
        price: 39.99,
      ),
      ProductCard(
        name: "Celestial ",
        description: "Sip your favorite beverage.",
        image: "assets/images/shirt-5.png",
        price: 14.99,
      ),
      ProductCard(
        name: " Harmony ",
        description: "Immerse yourself .",
        image: "assets/images/shirt-6.png",
        price: 159.99,
      ),
    ]
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
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: padding5),
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
              constraints: BoxConstraints(maxHeight: height(context) * .69),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CategoryTile(
                    icon: pageContent[index]["icon"]!,
                    title: pageContent[index]["title"]!,
                    subTitle: pageContent[index]["subTitle"]!,
                    items: itemsProduct[0],
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
    this.items = const [],
  });
  final String icon;
  final String title;
  final String subTitle;
  final List<ProductCard> items;
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
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(RoutesManager.productsByCat, arguments: items);
        },
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
                    color: MyColors.secondaryColor,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}

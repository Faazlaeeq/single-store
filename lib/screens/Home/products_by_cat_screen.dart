import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/Home/new_arrival_card.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_bottom_navigationbar.dart';
import 'package:single_store/models/product_card.dart';

class ProductsByCatScreen extends StatefulWidget {
  const ProductsByCatScreen({super.key, required this.productCardItems});

  @override
  State<ProductsByCatScreen> createState() => _ProductsByCatScreenState();

  final List<ProductCard> productCardItems;
}

class _ProductsByCatScreenState extends State<ProductsByCatScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Clothes",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: padding3,
              ),
              SizedBox(
                height: height(context) * .7,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: padding1,
                  ),
                  itemCount: widget.productCardItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RoutesManager.productDisplay,
                          arguments: widget.productCardItems[index],
                        );
                      },
                      child: productCard(
                          context,
                          widget.productCardItems[index].image,
                          widget.productCardItems[index].name,
                          widget.productCardItems[index].description,
                          widget.productCardItems[index].price.toString()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(key: scaffoldKey),
    );
  }
}

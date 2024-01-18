import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/Home/new_arrival_card.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_bottom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      "imgPath": "assets/images/banner-bg-img.png"
    }
  ];
  final List<Map<String, String>> newArrival = [
    {
      "imgPath": "assets/images/arrivals-bag.png",
      "brand": "The Marc Jacobs",
      "name": "Traveler Tote",
      "price": "195.00"
    },
    {
      "imgPath": "assets/images/arrivals-shoe.png",
      "brand": "Axel Arigato",
      "name": "Clean 90 Triple Sneakers",
      "price": "245.00"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppbar(scaffoldKey: scaffoldKey),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding5),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text("Our Lussore Man",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: MyColors.subtitleColor,
                    fontWeight: FontWeight.bold)),

            // Search Bar
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: padding3),
                      padding: const EdgeInsets.symmetric(horizontal: padding3),
                      height: 50,
                      decoration: BoxDecoration(
                          color: MyColors.forgroundWhiteColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const ImageIcon(
                            AssetImage("assets/icons/search.png"),
                            color: MyColors.primaryColor,
                            size: 17,
                          ),
                          const SizedBox(width: padding3),
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Search",
                                    hintStyle:
                                        Theme.of(context).textTheme.labelLarge,
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.filter);
                    },
                    icon: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: MyColors.primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(padding3),
                        child: Image.asset(
                          "assets/icons/filter.png",
                          alignment: Alignment.center,
                          height: 16,
                          width: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: OverflowBox(
                maxWidth: width(context),
                child: Container(
                  padding: const EdgeInsets.only(left: padding3),
                  width: double.infinity,
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          width: 260,
                          height: 160,
                          padding: const EdgeInsets.symmetric(
                              horizontal: padding3, vertical: padding4),
                          margin:
                              const EdgeInsets.symmetric(horizontal: padding3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      pageContent[index]["imgPath"]!))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(pageContent[index]['title']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!),
                                Text(pageContent[index]['subtitle']!,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge!),
                                const SizedBox(height: 11),
                                Text(pageContent[index]['code']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: MyColors.subtitleColor,
                                            fontWeight: FontWeight.bold)),
                                const Expanded(child: SizedBox()),
                                FilledButton(
                                  onPressed: () {},
                                  child: Text(pageContent[index]['buttonText']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: MyColors
                                                  .forgroundWhiteColor)),
                                )
                              ]),
                        );
                      },
                      itemCount: pageContent.length,
                      scrollDirection: Axis.horizontal),
                ),
              ),
            ),
            const SizedBox(height: padding2),
            Row(
              children: [
                Text("Categories",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18)),
                const Expanded(child: SizedBox()),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesManager.category);
                    },
                    child: Text(
                      "View all",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 170,
                    width: width(context) * 0.4,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/cat-clothes.png"))),
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColors.accentColor),
                        child: Column(children: [
                          Text(
                            "Clothes",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text("358 Products",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      color: MyColors.primaryColor,
                                      fontWeight: FontWeight.bold)),
                        ])),
                  ),
                  Container(
                    height: 170,
                    width: width(context) * 0.4,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/cat-bags.png"))),
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColors.accentColor),
                        child: Column(children: [
                          Text(
                            "Clothes",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text("358 Products",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      color: MyColors.primaryColor,
                                      fontWeight: FontWeight.bold)),
                        ])),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text("New Arrivals",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18)),
                const Expanded(child: SizedBox()),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      productCard(
                          context,
                          newArrival[0]["imgPath"]!,
                          newArrival[0]["brand"]!,
                          newArrival[0]["name"]!,
                          newArrival[0]["price"]!),
                      productCard(
                          context,
                          newArrival[1]["imgPath"]!,
                          newArrival[1]["brand"]!,
                          newArrival[1]["name"]!,
                          newArrival[1]["price"]!),
                      Text(
                        "Axel Arigato",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text("Clean 90 Triple Sneakers",
                          style: Theme.of(context).textTheme.labelSmall),
                      Text("\$245.00",
                          style: Theme.of(context).textTheme.titleSmall!),
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

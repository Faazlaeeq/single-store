import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_bottom_navigationbar.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final pageContentforSection1 = [
    {
      "img": "assets/icons/profile-with-bg.png",
      "title": "Personal Details",
      "link": ""
    },
    {"img": "assets/icons/bag-with-bg.png", "title": "My Orders", "link": ""},
    {
      "img": "assets/icons/heart-with-bg.png",
      "title": "My Favorates",
      "link": ""
    },
    {
      "img": "assets/icons/shipping-with-bg.png",
      "title": "Shipping Address",
      "link": ""
    },
    {"img": "assets/icons/card-with-bg.png", "title": "My Card", "link": ""},
    {
      "img": "assets/icons/setting-with-bg.png",
      "title": "Settings",
      "link": ""
    },
  ];
  final pageContentforSection2 = [
    {"img": "assets/icons/faq-with-bg.png", "title": "FAQs", "link": ""},
    {
      "img": "assets/icons/privacy-with-bg.png",
      "title": "Privacy & Policies",
      "link": ""
    },
    {
      "img": "assets/icons/community-with-bg.png",
      "title": "Communities",
      "link": ""
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        scaffoldKey: scaffoldKey,
        showTrailingIcon: true,
        actionIcon: "assets/icons/settings.png",
        padding: padding2,
        actionBgColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding2),
              child: CommonWidgets.customListTile(
                  context: context,
                  name: "Hasan Mahmod",
                  nameTheme: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18),
                  imageUrl: "assets/images/profile-potrait.png",
                  subtitle: "rikafashionshop@gmail.com",
                  verticalPadding: padding2,
                  horizontalPadding: padding2,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  subtitleStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 12, color: MyColors.subtitleColor)),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: MyColors.outlineColorOnLight, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(
                    horizontal: padding4, vertical: padding1),
                padding: const EdgeInsets.symmetric(
                    horizontal: 0, vertical: padding2),
                child: Column(
                    children: pageContentforSection1
                        .map((e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: padding1, vertical: padding1),
                              child: ListTile(
                                leading: Image.asset(e["img"] as String),
                                title: Text(e["title"] as String,
                                    style:
                                        Theme.of(context).textTheme.titleSmall),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(e["link"] as String);
                                },
                              ),
                            ))
                        .toList())),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: MyColors.outlineColorOnLight, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(
                    horizontal: padding4, vertical: padding1),
                padding: const EdgeInsets.symmetric(
                    horizontal: 0, vertical: padding2),
                child: Column(
                    children: pageContentforSection2
                        .map((e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: padding1, vertical: padding1),
                              child: ListTile(
                                leading: Image.asset(e["img"] as String),
                                title: Text(e["title"] as String,
                                    style:
                                        Theme.of(context).textTheme.titleSmall),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(e["link"] as String);
                                },
                              ),
                            ))
                        .toList()))
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

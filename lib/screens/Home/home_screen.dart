import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const ImageIcon(
            AssetImage('assets/icons/drawer-icon.png'),
            color: MyColors.secondaryColor,
            size: 17,
          ),
          style: ButtonStyle(backgroundColor: MyColors.mPrimaryColor),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: MyColors.accentColorDark,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/images/avatar.png",
                      alignment: Alignment.bottomCenter, fit: BoxFit.cover),
                )),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(padding3),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text("Our Lussore Man",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: MyColors.subtitleColor,
                    fontWeight: FontWeight.bold)),

            // Search Bar
            Container(
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
                            hintStyle: Theme.of(context).textTheme.labelLarge,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none))),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

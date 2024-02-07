import 'package:flutter/material.dart';
import 'package:single_store/Data/data.dart';
import 'package:single_store/main.dart';
import 'package:single_store/screens/Home/wishlist_screen.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_bottom_navigationbar.dart';
import 'package:single_store/widgets/my_drawer_widget.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  final productItem = Data().itemsProduct;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
            padding: const EdgeInsets.symmetric(
                horizontal: padding5, vertical: padding2),
            child: Row(
              children: [
                CommonWidgets.headingText(context, "My Orders"),
                const Spacer(),
                ToggleButtons(
                    color: Colors.transparent,
                    fillColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    borderColor: Colors.transparent,
                    selectedBorderColor: Colors.transparent,
                    isSelected: isSelected,
                    onPressed: (index) {
                      setState(() {
                        for (var i = 0; i < isSelected.length; i++) {
                          isSelected[i] = i == index;
                        }
                      });
                    },
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: isSelected[0]
                                      ? Colors.transparent
                                      : MyColors.accentColorDark),
                              color: isSelected[0]
                                  ? MyColors.primaryColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(padding1),
                          margin:
                              const EdgeInsets.symmetric(horizontal: padding1),
                          child: Text(
                            "Ongoing",
                            style: Theme.of(context).textTheme.labelSmall,
                          )),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: isSelected[1]
                                      ? Colors.transparent
                                      : MyColors.subtitleColor2),
                              color: isSelected[1]
                                  ? MyColors.primaryColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(padding1),
                          margin:
                              const EdgeInsets.symmetric(horizontal: padding1),
                          child: Text(
                            "Conpleted",
                            style: Theme.of(context).textTheme.labelSmall,
                          )),
                    ]),
              ],
            ),
          ),
          if (isSelected[0])
            ...List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding3),
                child: CommonWidgets.customListTile(
                  context: context,
                  imageUrl: productItem[index].image,
                  name: productItem[index].name,
                  subtitle: productItem[index].description,
                  description: "\$${productItem[index].price.toString()}",
                  crossAxisAlignment: CrossAxisAlignment.center,
                  subtitleStyle: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 9),
                ),
              ),
            )
          else
            ...List.generate(
              2,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding3),
                child: CommonWidgets.customListTile(
                  context: context,
                  imageUrl: productItem[index + 2].image,
                  name: productItem[index + 2].name,
                  subtitle: productItem[index + 2].description,
                  description: "\$${productItem[index + 2].price.toString()}",
                  crossAxisAlignment: CrossAxisAlignment.center,
                  subtitleStyle: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 9),
                ),
              ),
            ),
        ],
      )),
      drawer: MyDrawer(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

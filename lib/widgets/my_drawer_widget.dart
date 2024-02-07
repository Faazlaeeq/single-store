import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';

class MyDrawer extends StatelessWidget implements PreferredSizeWidget {
  MyDrawer({super.key});

  final routesList = [
    ["Review", RoutesManager.review],
    ["Filters", RoutesManager.filter],
    ["Order Detail", RoutesManager.orderDetail],
    ["Order Tracking", RoutesManager.orderTracking],
    ["Discounts", RoutesManager.discounts],
    ["WishList", RoutesManager.wishlist],
    ["Cart", RoutesManager.cart],
    ["Profile", RoutesManager.profile],
    ["Category", RoutesManager.category],
    ["Home", RoutesManager.home],
    ["Profile Settings", RoutesManager.profileSettings],
    ["My Orders", RoutesManager.myOrders],
    ["Payment", RoutesManager.payment]
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: MyColors.secondaryColor,
            ),
            child: Image.asset("assets/images/logo-black.png"),
          ),
          Column(
            children: List.generate(routesList.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: MyColors.secondaryColor,
                  style: ListTileStyle.drawer,
                  title: Text(routesList[index][0]),
                  onTap: () {
                    Navigator.of(context).pushNamed(routesList[index][1]);
                  },
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromWidth(double.minPositive);
}

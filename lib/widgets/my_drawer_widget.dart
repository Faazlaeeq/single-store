import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';

class MyDrawer extends StatelessWidget implements PreferredSizeWidget {
  const MyDrawer({super.key});

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: MyColors.secondaryColor,
              style: ListTileStyle.drawer,
              title: const Text("Reviews"),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesManager.review);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: MyColors.secondaryColor,
              style: ListTileStyle.drawer,
              title: const Text("Filters"),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesManager.filter);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: MyColors.secondaryColor,
              style: ListTileStyle.drawer,
              title: const Text("Order Detail"),
              onTap: () {
                Navigator.of(context).pushNamed(RoutesManager.orderDetail);
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromWidth(double.minPositive);
}

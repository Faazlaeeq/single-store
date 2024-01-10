import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  MyAppbar({
    super.key,
    required this.scaffoldKey,
    this.leadingIcon = 'assets/icons/drawer-icon.png',
    this.actionIcon = "assets/images/avatar.png",
    this.actionBgColor = MyColors.accentColorDark,
    this.padding = padding1,
    this.onpressed,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final String leadingIcon;
  final String actionIcon;
  final Color actionBgColor;
  final double padding;

  VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      leadingWidth: 90,
      leading: IconButton(
        icon: ImageIcon(
          AssetImage(leadingIcon),
          color: MyColors.secondaryColor,
          size: 17,
        ),
        style: ButtonStyle(backgroundColor: MyColors.mPrimaryColor),
        onPressed: onpressed ??
            () => {
                  if (scaffoldKey.currentState!.isDrawerOpen)
                    {scaffoldKey.currentState!.closeDrawer()}
                  else
                    {scaffoldKey.currentState!.openDrawer()}
                },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
              backgroundColor: actionBgColor,
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: Image.asset(actionIcon,
                    alignment: Alignment.bottomCenter, fit: BoxFit.cover),
              )),
        ),
        const SizedBox(
          width: padding5,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

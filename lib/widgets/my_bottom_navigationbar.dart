import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:single_store/theme/sizes.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          color: MyColors.secondaryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      padding: const EdgeInsets.symmetric(
          horizontal: padding1 * 8, vertical: padding3),
      child: SalomonBottomBar(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        itemPadding:
            const EdgeInsets.symmetric(horizontal: 0, vertical: padding1),
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: OverflowBox(
                maxHeight: 40,
                maxWidth: 40,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: MyColors.primaryColor),
                  child: Padding(
                    padding: const EdgeInsets.all(padding2),
                    child: Image.asset(
                      "assets/icons/home.png",
                      alignment: Alignment.center,
                      height: 16,
                      width: 18,
                    ),
                  ),
                ),
              ),
            ),
            title: SizedBox(
              width: 50,
              child: Text("Home",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 11)),
            ),
            selectedColor: MyColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: OverflowBox(
                maxHeight: 40,
                maxWidth: 40,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: _currentIndex == 1
                          ? MyColors.primaryColor
                          : Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(padding2),
                    child: Image.asset(
                      "assets/icons/cart.png",
                      alignment: Alignment.center,
                      height: 16,
                      width: 18,
                    ),
                  ),
                ),
              ),
            ),
            title: SizedBox(
              width: 50,
              child: Text("Cart",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 11)),
            ),
            selectedColor: MyColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: OverflowBox(
                maxHeight: 40,
                maxWidth: 40,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: _currentIndex == 1
                          ? MyColors.primaryColor
                          : Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(padding2),
                    child: Image.asset(
                      "assets/icons/notifications.png",
                      alignment: Alignment.center,
                      height: 16,
                      width: 18,
                    ),
                  ),
                ),
              ),
            ),
            title: SizedBox(
              width: 50,
              child: Text("Alerts",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 11)),
            ),
            selectedColor: MyColors.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: OverflowBox(
                maxHeight: 40,
                maxWidth: 40,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: _currentIndex == 1
                          ? MyColors.primaryColor
                          : Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(padding2),
                    child: Image.asset(
                      "assets/icons/profile.png",
                      alignment: Alignment.center,
                      height: 16,
                      width: 18,
                    ),
                  ),
                ),
              ),
            ),
            title: SizedBox(
              width: 50,
              child: Text("Profile",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 11)),
            ),
            selectedColor: MyColors.primaryColor,
          ),
        ],
      ),
    );
    // return Container(
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: BottomNavigationBar(
    //       backgroundColor: MyColors.secondaryColor,
    //       selectedItemColor: MyColors.primaryColor,
    //       unselectedItemColor: MyColors.accentColorDark,
    //       items: const <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(
    //           //TODO: change this icon

    //           icon: ImageIcon(AssetImage('icons/home.png')),
    //           label: 'Home',
    //         ),
    //         BottomNavigationBarItem(
    //             //TODO: change this icon

    //             icon: ImageIcon(AssetImage('icons/cart.png')),
    //             label: 'Cart'),
    //         BottomNavigationBarItem(
    //             //TODO: change this icon
    //             icon: ImageIcon(AssetImage('icons/notifications.png')),
    //             label: 'Notifications'),
    //         BottomNavigationBarItem(
    //             //TODO: change this icon

    //             icon: ImageIcon(AssetImage('icons/profile.png')),
    //             label: 'Profile'),
    //       ],
    //     ),
    //   ),
    // );
  }
// }
}

// Widget myBottomNavigationBar(BuildContext context) {

//    return SalomonBottomBar(
//           currentIndex: _currentIndex,
//           onTap: (i) => setState(() => _currentIndex = i),
//           items: [
//             /// Home
//             SalomonBottomBarItem(
//               icon: Icon(Icons.home),
//               title: Text("Home"),
//               selectedColor: Colors.purple,
//             ),

//             /// Likes
//             SalomonBottomBarItem(
//               icon: Icon(Icons.favorite_border),
//               title: Text("Likes"),
//               selectedColor: Colors.pink,
//             ),

//             /// Search
//             SalomonBottomBarItem(
//               icon: Icon(Icons.search),
//               title: Text("Search"),
//               selectedColor: Colors.orange,
//             ),

//             /// Profile
//             SalomonBottomBarItem(
//               icon: Icon(Icons.person),
//               title: Text("Profile"),
//               selectedColor: Colors.teal,
//             ),
//           ],
//         ),
//   // return Container(
//   //   child: Padding(
//   //     padding: const EdgeInsets.all(8.0),
//   //     child: BottomNavigationBar(
//   //       backgroundColor: MyColors.secondaryColor,
//   //       selectedItemColor: MyColors.primaryColor,
//   //       unselectedItemColor: MyColors.accentColorDark,
//   //       items: const <BottomNavigationBarItem>[
//   //         BottomNavigationBarItem(
//   //           //TODO: change this icon

//   //           icon: ImageIcon(AssetImage('icons/home.png')),
//   //           label: 'Home',
//   //         ),
//   //         BottomNavigationBarItem(
//   //             //TODO: change this icon

//   //             icon: ImageIcon(AssetImage('icons/cart.png')),
//   //             label: 'Cart'),
//   //         BottomNavigationBarItem(
//   //             //TODO: change this icon
//   //             icon: ImageIcon(AssetImage('icons/notifications.png')),
//   //             label: 'Notifications'),
//   //         BottomNavigationBarItem(
//   //             //TODO: change this icon

//   //             icon: ImageIcon(AssetImage('icons/profile.png')),
//   //             label: 'Profile'),
//   //       ],
//   //     ),
//   //   ),
//   // );
// }

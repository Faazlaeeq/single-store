import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/counter_widget.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        scaffoldKey: scaffoldKey,
        actionBgColor: Colors.transparent,
        actionIcon: "assets/icons/addtocart-black.png",
        leadingIcon: "assets/icons/arrow-smooth-left.png",
        padding: padding2,
        positionedWidget: const Positioned(
            top: 10,
            right: 10,
            child: Badge(
              backgroundColor: MyColors.primaryColor,
              label: Text("3"),
              textColor: MyColors.secondaryColor,
            )),
        onpressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: padding5, vertical: padding1),
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "My Cart",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/shirt-1.png"),
                          fit: BoxFit.cover)),
                  height: 80,
                  width: 80,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(20),
                  //   child: Image.asset("assets/images/shirt-1.png",
                  //       fit: BoxFit.fitHeight),
                  // ),
                ),
                Flexible(
                  flex: 2,
                  child: ListTile(
                    isThreeLine: true,
                    title: Text(
                      "Roller Rabbit",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vado Odelle Dress",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 150",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Spacer(),
                            Container(
                              width: 80,
                              alignment: Alignment.centerRight,
                              child: CounterWidget(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: MyColors.dividerColor,
          ),
          SizedBox(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/shirt-1.png"),
                          fit: BoxFit.cover)),
                  height: 80,
                  width: 80,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(20),
                  //   child: Image.asset("assets/images/shirt-1.png",
                  //       fit: BoxFit.fitHeight),
                  // ),
                ),
                Flexible(
                  flex: 2,
                  child: ListTile(
                    isThreeLine: true,
                    title: Text(
                      "Roller Rabbit",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vado Odelle Dress",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 150",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Spacer(),
                            Container(
                              width: 80,
                              alignment: Alignment.centerRight,
                              child: CounterWidget(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: MyColors.dividerColor,
          ),
          SizedBox(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/shirt-1.png"),
                          fit: BoxFit.cover)),
                  height: 80,
                  width: 80,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(20),
                  //   child: Image.asset("assets/images/shirt-1.png",
                  //       fit: BoxFit.fitHeight),
                  // ),
                ),
                Flexible(
                  flex: 2,
                  child: ListTile(
                    isThreeLine: true,
                    title: Text(
                      "Roller Rabbit",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vado Odelle Dress",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 150",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Spacer(),
                            Container(
                              width: 80,
                              alignment: Alignment.centerRight,
                              child: CounterWidget(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.dividerColor)),
            child: Padding(
              padding: const EdgeInsets.all(padding2),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Spacer(),
                      Text(
                        "\$ 450",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Divider(
                    color: MyColors.dividerColor,
                  ),
                  Row(
                    children: [
                      Text(
                        "Shipping",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Spacer(),
                      Text(
                        "\$ 17",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Divider(
                    color: MyColors.dividerColor,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Spacer(),
                      Text(
                        "\$ 450",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(bottom: padding3),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MyColors.mPrimaryColor,
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
              child: SizedBox(
                width: width(context) * 1,
                height: 50,
                child: Center(
                  child: Text(
                    "Proceed to Checkout",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: MyColors.secondaryColor),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.of(context).pushNamed(RoutesManager.cart);
              },
            ),
          )
        ]),
      ),
    );
  }
}


//  SizedBox(
//               width: width(context),
//               height: 100,
//               child: Row(
//                 children: [
//                   ConstrainedBox(
//                     constraints: const BoxConstraints(
//                       minWidth: 80,
//                       minHeight: 80,
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.asset("assets/images/shirt-1.png",
//                           fit: BoxFit.fitHeight),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       "Roller Rabbit",
//                       style: Theme.of(context).textTheme.titleSmall,
//                     ),
//                     subtitle: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Vado Odelle Dress",
//                           maxLines: 2,
//                           style: Theme.of(context).textTheme.labelSmall,
//                         ),
//                         Text(
//                           "\$ 150",
//                           style: Theme.of(context).textTheme.bodyMedium,
//                         ),
//                       ],
//                     ),
//                     trailing: const Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [CounterWidget()],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
          

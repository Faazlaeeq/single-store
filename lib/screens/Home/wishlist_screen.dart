import 'package:flutter/material.dart';
import 'package:single_store/Data/data.dart';
import 'package:single_store/models/product_card.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(
          scaffoldKey: scaffoldKey,
          actionBgColor: Colors.transparent,
          actionIcon: "assets/icons/notifications-light.png",
          leadingIcon: "assets/icons/arrow-smooth-left.png",
          padding: padding2,
          onpressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: padding5, vertical: padding2),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: padding3),
                        padding:
                            const EdgeInsets.symmetric(horizontal: padding3),
                        height: 50,
                        decoration: BoxDecoration(
                            color: MyColors.secondaryColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: MyColors.outlineColorOnLight, width: 1)),
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
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
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
                            "assets/icons/scanner.png",
                            alignment: Alignment.center,
                            height: 16,
                            width: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: padding3),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Wishlist",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18),
                ),
              ),
              Expanded(child: WishlistList())
            ],
          ),
        ));
  }
}

class WishlistList extends StatelessWidget {
  WishlistList({super.key});

  final List<ProductCard> itemList = Data().itemsProduct;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 5, vertical: padding2),
            padding: const EdgeInsets.symmetric(
                horizontal: padding1, vertical: padding1),
            decoration: BoxDecoration(
              color: MyColors.secondaryColor,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                    color: MyColors.shadowColor,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 3)
              ],
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(itemList[index].image),
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
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: padding1),
                    isThreeLine: false,
                    title: Text(
                      itemList[index].name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemList[index].description,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$${itemList[index].price}",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Spacer(),
                            SizedBox(
                              height: 30,
                              child: InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: padding2),
                                  decoration: BoxDecoration(
                                      color: MyColors.primaryColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "Add to Cart",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: MyColors.secondaryColor,
                                            fontSize: 10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:single_store/Data/data.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';

class OrderDetailScreen extends StatelessWidget {
  OrderDetailScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<List<String>> pageContent = [
    ["Street:", "3512 Pearl Street"],
    ["City:", "Sacramento"],
    ["State/province/area:", "California"],
    ["Zip code:", "95814"],
    ["Country calling code:", "+1"],
    ["Country:", "United States"],
  ];

  final productItem = Data().itemsProduct;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(
            scaffoldKey: scaffoldKey,
            showTrailingIcon: false,
            leadingIcon: "assets/icons/arrow-smooth-left.png",
            onpressed: () => Navigator.of(context).pop()),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: padding5),
                child: CommonWidgets.headingText(context, "Delivery Address")),
            Container(
              padding: const EdgeInsets.all(padding3),
              margin: const EdgeInsets.all(padding5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: const [MyColors.spreadedShadow]),
              child: Table(
                children: List.generate(pageContent.length, (index) {
                  return TableRow(
                    children: [
                      Row(
                        children: [
                          Text(
                            pageContent[index][0],
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            pageContent[index][1],
                            style: Theme.of(context).textTheme.labelLarge,
                            textAlign: TextAlign.start,
                          )
                        ],
                      ),
                    ],
                  );
                }),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: padding5),
                child: CommonWidgets.headingText(context, "Product Item")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding3),
              child: CommonWidgets.customListTile(
                context: context,
                imageUrl: productItem[0].image,
                name: productItem[0].name,
                subtitle: productItem[0].description,
                description: "\$${productItem[0].price.toString()}",
                crossAxisAlignment: CrossAxisAlignment.center,
                subtitleStyle: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontSize: 9),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding3),
              child: CommonWidgets.customListTile(
                context: context,
                imageUrl: productItem[1].image,
                name: productItem[1].name,
                subtitle: productItem[1].description,
                description: "\$${productItem[1].price.toString()}",
                crossAxisAlignment: CrossAxisAlignment.center,
                subtitleStyle: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontSize: 9),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: padding5),
                child: CommonWidgets.headingText(context, "Promo Code")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding3),
              child: CommonWidgets.customListTile(
                context: context,
                imageUrl: "assets/icons/promocode.png",
                name: "Add Promo Code",
                subtitle: "gotit2021",
                crossAxisAlignment: CrossAxisAlignment.start,
                subtitleStyle: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontSize: 9),
                heightImg: 40,
                widthImg: 40,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding5),
              child: CommonWidgets.listTileWithButton(
                context: context,
                buttonText: "Place Order",
                subtitle:
                    "\$${(productItem[0].price + productItem[1].price).toStringAsFixed(2)}",
              ),
            )
          ],
        ));
  }
}

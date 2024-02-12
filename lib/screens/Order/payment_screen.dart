import 'package:flutter/material.dart';
import 'package:single_store/Data/data.dart';
import 'package:single_store/main.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_drawer_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final pageContent = Data().itemsProduct;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        scaffoldKey: scaffoldKey,
        leadingIcon: "assets/icons/arrow-smooth-left.png",
        padding: padding2,
        actionBgColor: Colors.white,
        onpressed: () => Navigator.of(context).pop(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding3),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding2, vertical: padding2),
              child: CommonWidgets.headingText(context, "Payment"),
            ),
            CommonWidgets.customListTile(
                context: context,
                name: "PayPal",
                imageUrl: "assets/icons/paypal.png",
                crossAxisAlignment: CrossAxisAlignment.center,
                nameTheme: Theme.of(context).textTheme.bodyMedium,
                heightImg: 40,
                widthImg: 40,
                titleEnd: Radio(
                    value: false, groupValue: true, onChanged: (value) {})),
            CommonWidgets.customListTile(
                context: context,
                name: "Pay on Delivery",
                imageUrl: "assets/icons/cash.png",
                crossAxisAlignment: CrossAxisAlignment.center,
                heightImg: 40,
                widthImg: 40,
                nameTheme: Theme.of(context).textTheme.bodyMedium,
                titleEnd: Radio(
                    value: false, groupValue: true, onChanged: (value) {})),
            CommonWidgets.customListTile(
                context: context,
                imageUrl: "assets/icons/plus.png",
                crossAxisAlignment: CrossAxisAlignment.center,
                name: "Add Card",
                nameTheme: Theme.of(context).textTheme.bodyMedium,
                mainAxisAlignment: MainAxisAlignment.center,
                heightImg: 40,
                widthImg: width(context) * 0.35,
                fit: BoxFit.fitHeight,
                imageAlignment: Alignment.centerRight),
            const SizedBox(height: 50),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding3, vertical: padding2),
                  child: CommonWidgets.headingText(context, "History"),
                ),
                ...List.generate(
                    3,
                    (index) => CommonWidgets.customListTile(
                          context: context,
                          imageUrl: pageContent[index].image,
                          name: pageContent[index].name,
                          subtitle: pageContent[index].description,
                          subtitleStyle: Theme.of(context).textTheme.labelSmall,
                          nameTheme: Theme.of(context).textTheme.titleSmall,
                          discriptionWidget: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 40,
                              height: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: MyColors.forgroundWhiteColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/send.png"),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Send",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(fontSize: 7),
                                  )
                                ],
                              ),
                            ),
                          ),
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          heightImg: 60,
                          widthImg: 60,
                          titleEnd: Text(
                            "\$${pageContent[index].price}",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          fit: BoxFit.cover,
                          imageAlignment: Alignment.center,
                        ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/counter_widget.dart';

class ProductDisplayScreen extends StatefulWidget {
  ProductDisplayScreen({super.key});

  final pageContent = [
    "assets/images/products/shirt-1.png",
    "Roller Rabbit",
    "Vado Odelle Dress",
    "\$129.99",
    "Experience the grace of nature .",
    "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
    "320"
  ];
  @override
  State<ProductDisplayScreen> createState() => _ProductDisplayScreenState();
}

class _ProductDisplayScreenState extends State<ProductDisplayScreen> {
  List<bool> selectedSize = [false, false, true, false, false];
  List<bool> selectedColor = [true, false, true, false];
  @override
  Widget build(BuildContext context) {
    var sizeToggleButton = SizedBox(
      width: width(context) * 0.9,
      child: ToggleButtons(
        renderBorder: false,
        color: MyColors.subtitleColor,
        selectedColor: MyColors.forgroundWhiteColor,
        fillColor: Colors.transparent,
        splashColor: Colors.transparent,
        isSelected: selectedSize,
        onPressed: (index) {
          setState(() {
            selectedSize[index] = true;
            for (int i = 0; i < selectedSize.length; i++) {
              if (i != index) {
                selectedSize[i] = false;
              }
            }
          });
        },
        children: [
          Container(
              decoration: BoxDecoration(
                color: selectedSize[0]
                    ? MyColors.primaryColor
                    : MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: MyColors.forgroundWhiteColor, width: 1),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: const Text(
                "S",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Container(
              decoration: BoxDecoration(
                color: selectedSize[1]
                    ? MyColors.primaryColor
                    : MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: MyColors.forgroundWhiteColor, width: 1),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: const Text(
                "M",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Container(
              decoration: BoxDecoration(
                color: selectedSize[2]
                    ? MyColors.primaryColor
                    : MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: MyColors.forgroundWhiteColor, width: 1),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: const Text(
                "L",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Container(
              decoration: BoxDecoration(
                color: selectedSize[3]
                    ? MyColors.primaryColor
                    : MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: MyColors.forgroundWhiteColor, width: 1),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: const Text(
                "XL",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Container(
              decoration: BoxDecoration(
                color: selectedSize[4]
                    ? MyColors.primaryColor
                    : MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: MyColors.forgroundWhiteColor, width: 1),
              ),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: const Text(
                "XXL",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Display"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/products/shirt-1.png"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(padding5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: MyColors.secondaryColor),
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: width(context) * 0.9,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: height(context) * 0.1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.pageContent[1],
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(widget.pageContent[2],
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                  Text(
                                      "⭐⭐⭐⭐⭐ ( ${widget.pageContent[6]} Reviews)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                CounterWidget(),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text("Avialable in stock",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(fontSize: 11)),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Size",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: sizeToggleButton,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Desctiption",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Text(widget.pageContent[5],
                          style: Theme.of(context).textTheme.labelSmall),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        title: Text("Total Price",
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(fontSize: 9)),
                        subtitle: Text(
                          widget.pageContent[3],
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18),
                        ),
                        trailing: ElevatedButton(
                          child: SizedBox(
                            width: width(context) * .35,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/icons/addtocart.png"),
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Add to Cart",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: MyColors.secondaryColor),
                                )
                              ],
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(RoutesManager.cart);
                          },
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: 5,
                    top: 70,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: MyColors.secondaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              blurStyle: BlurStyle.normal,
                            )
                          ]),
                      child: ToggleButtons(
                          renderBorder: false,
                          direction: Axis.vertical,
                          isSelected: selectedColor,
                          constraints: BoxConstraints(
                              maxHeight: 30,
                              maxWidth: 20,
                              minHeight: 20,
                              minWidth: 20),
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1, color: MyColors.accentColorDark),
                                color: MyColors.secondaryColor,
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 10,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1, color: MyColors.accentColorDark),
                                color: MyColors.primaryColor,
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 10,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors.greenShade,
                                border: Border.all(
                                    width: 1, color: MyColors.accentColorDark),
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 10,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1, color: MyColors.accentColorDark),
                                color: MyColors.yellowColor,
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 10,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

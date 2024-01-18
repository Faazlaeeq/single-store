import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  final List<Map<String, String>> pageContent = const [
    {
      "title": "20% Discount \nNew Arrival Product",
      "description":
          "Publish up your selfies to make yourself \nmore beautiful with this app.",
      "image": "assets/images/boarding-img-1.png"
    },
    {
      "title": "Take Advantage Of The Offer Shopping ",
      "description":
          "Publish up your selfies to make yourself \nmore beautiful with this app.",
      "image": "assets/images/boarding-img-2.png"
    },
    {
      "title": "All Types Offers Within Your Reach",
      "description":
          "Publish up your selfies to make yourself \nmore beautiful with this app.",
      "image": "assets/images/boarding-img-3.png"
    },
  ];

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _controller = PageController(viewportFraction: 1);

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(padding3),
                child: PageView.builder(
                    controller: _controller,
                    itemCount: 3,
                    onPageChanged: (index) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image(
                            image:
                                AssetImage(widget.pageContent[index]["image"]!),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                top: padding3, bottom: padding3),
                            child: Text(
                              widget.pageContent[index]["title"]!,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              widget.pageContent[index]["description"]!,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Flexible(
                flex: 0,
                fit: FlexFit.tight,
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(padding3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DotsIndicator(
                            dotsCount: 3,
                            position: pageIndex,
                            decorator: const DotsDecorator(
                              activeColor: MyColors.primaryColor,
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              activeSize: Size(20, 6),
                              size: Size(5, 5),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )),
                            ),
                          ),
                          FloatingActionButton(
                              onPressed: () {
                                if (pageIndex >= 2) {
                                  Navigator.pushNamed(
                                      context, RoutesManager.login);
                                } else {
                                  _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                }
                              },
                              child: const ImageIcon(
                                  size: 17,
                                  AssetImage("assets/icons/arrow-smooth.png")))
                        ]),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

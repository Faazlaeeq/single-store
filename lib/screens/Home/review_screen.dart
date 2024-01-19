import 'package:flutter/material.dart';
import 'package:single_store/Data/data.dart';
import 'package:single_store/models/review_model.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

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
            horizontal: padding3, vertical: padding2),
        child: Column(children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: padding2, vertical: 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Reviews",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
            ),
          ),
          Expanded(
            child: ReviewList(),
          ),
        ]),
      ),
    );
  }
}

class ReviewList extends StatelessWidget {
  ReviewList({super.key});

  final List<ReviewModel> itemList = Data().reviewsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
                horizontal: padding2, vertical: padding2),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(itemList[index].imageUrl),
                          fit: BoxFit.cover)),
                  height: 60,
                  width: 60,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(20),
                  //   child: Image.asset("assets/images/shirt-1.png",
                  //       fit: BoxFit.fitHeight),
                  // ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: padding2, vertical: padding2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(itemList[index].name,
                                  style:
                                      Theme.of(context).textTheme.titleSmall!),
                              SizedBox(
                                  child: Row(
                                children: itemList[index].getStar(),
                              ))
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            itemList[index].date,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.subtitleColor2),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            itemList[index].review * 2,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(color: MyColors.primaryColor),
                          ),
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

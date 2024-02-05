import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:single_store/widgets/my_bottom_navigationbar.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class OrderTrackingScreen extends StatefulWidget {
  const OrderTrackingScreen({super.key});

  @override
  State<OrderTrackingScreen> createState() => _OrderTrackingScreenState();
}

class _OrderTrackingScreenState extends State<OrderTrackingScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final SfRangeValues _values = const SfRangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
          scaffoldKey: scaffoldKey,
          showTrailingIcon: false,
          leadingIcon: "assets/icons/arrow-smooth-left.png",
          onpressed: () => Navigator.of(context).pop()),
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding5),
            child: CommonWidgets.searchBarWithIconButton(context: context),
          ),
          Container(
              decoration: BoxDecoration(
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(13),
                boxShadow: const [MyColors.spreadedShadow],
              ),
              margin: const EdgeInsets.symmetric(
                  horizontal: padding5, vertical: 10),
              child: Column(
                children: [
                  CommonWidgets.customListTile(
                      context: context,
                      imageUrl: "assets/icons/tracking.png",
                      isDecoratedCard: false,
                      name: "6556 23341 8090",
                      subtitle: "Ena Express",
                      titleEnd: Text(
                        "Transit",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      description: "Estimated delivery: 12/12/2021",
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      subtitleStyle: Theme.of(context).textTheme.labelLarge,
                      heightImg: 16,
                      widthImg: 18,
                      imageBorderRadius: 0),
                  TrackSlider(values: _values),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: padding4, vertical: padding2),
                    child: Table(
                      children: [
                        TableRow(children: [
                          Text(
                            "25 June, 2021",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          const Spacer(),
                          Text(
                            "30 June, 2022",
                            style: Theme.of(context).textTheme.labelSmall,
                          )
                        ]),
                        TableRow(children: [
                          Text(
                            "Sacramnto",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const Spacer(),
                          Text(
                            "New York",
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ])
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: padding3, vertical: 10),
              child: Column(
                children: [
                  CommonWidgets.headingText(context, "Tracking"),
                  CommonWidgets.customListTile(
                    context: context,
                    name: "US 2343445668",
                    nameTheme: Theme.of(context).textTheme.bodyMedium,
                    subtitle: "Washington - Georgia",
                    subtitleStyle: Theme.of(context).textTheme.labelSmall,
                    titleEnd: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Delivered",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    crossAxisAlignment: CrossAxisAlignment.center,
                    imageUrl: "assets/icons/car.png",
                  ),
                  CommonWidgets.customListTile(
                    context: context,
                    name: "US 2343445668",
                    nameTheme: Theme.of(context).textTheme.bodyMedium,
                    subtitle: "Washington - Georgia",
                    subtitleStyle: Theme.of(context).textTheme.labelSmall,
                    titleEnd: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Delivered",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: MyColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    crossAxisAlignment: CrossAxisAlignment.center,
                    imageUrl: "assets/icons/bike.png",
                  ),
                  CommonWidgets.customListTile(
                    context: context,
                    name: "US 2343445668",
                    nameTheme: Theme.of(context).textTheme.bodyMedium,
                    subtitle: "Washington - Georgia",
                    subtitleStyle: Theme.of(context).textTheme.labelSmall,
                    titleEnd: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Delivered",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: MyColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    crossAxisAlignment: CrossAxisAlignment.center,
                    imageUrl: "assets/icons/van.png",
                  )
                ],
              )),
        ]),
      ),
    );
  }
}

class TrackSlider extends StatelessWidget {
  const TrackSlider({
    super.key,
    required SfRangeValues values,
  }) : _values = values;

  final SfRangeValues _values;

  @override
  Widget build(BuildContext context) {
    return SfRangeSliderTheme(
        data: SfRangeSliderThemeData(
          thumbColor: Colors.transparent,
          thumbRadius: 11,
          activeDividerStrokeWidth: 2,
          inactiveDividerColor: MyColors.inactiveDividerColor,
          inactiveDividerStrokeWidth: 2,
          inactiveDividerStrokeColor: MyColors.secondaryColor,
          inactiveDividerRadius: 8,
          activeTrackHeight: 3,
          inactiveTrackHeight: 3,
          inactiveTrackColor: MyColors.inactiveDividerColor,
        ),
        child: SfRangeSlider(
          min: 0.0,
          max: 3,
          interval: 1,
          showDividers: true,
          showTicks: false,
          showLabels: false,
          values: _values,
          startThumbIcon: Padding(
            padding: const EdgeInsets.all(3),
            child: Image.asset(
              "assets/icons/start-icon.png",
              height: 13,
              width: 13,
            ),
          ),
          endThumbIcon: Image.asset(
            "assets/icons/plane.png",
            height: 21,
            width: 21,
          ),
          onChanged: (SfRangeValues newValues) {},
        ));
  }
}

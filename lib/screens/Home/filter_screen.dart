import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var filterIsSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  var sortByIsSelected = [true, false, false];
  var ratingIsSelected = [true, true, true, true, true];

  SfRangeValues _values = const SfRangeValues(40.0, 80.0);

  @override
  Widget build(BuildContext context) {
    final filterChipsData = <Widget>[
      const Text("New Arrival"),
      const Text("Shoes"),
      const Text("Shirt"),
      const Text("Pant"),
      const Text("Jeans"),
      const Text("Dress"),
      const Text("Jacket"),
      const Text("Hat"),
      const Text("Gloves"),
    ];

    final sortByChipsData = <String>[
      "New Today",
      "New This Week",
      "TopSellers",
    ];

    var sortByChips = Wrap(
      alignment: WrapAlignment.start,
      spacing: 5,
      runSpacing: 5,
      children: List<Widget>.generate(sortByIsSelected.length, (index) {
        return MyChip(
            label: Text(sortByChipsData[index]),
            isSelected: sortByIsSelected[index],
            primaryColor: MyColors.primaryColor,
            secondaryColor: MyColors.secondaryColor,
            outlineColorOnLight: MyColors.outlineColorOnLight,
            textTheme: Theme.of(context).textTheme,
            onTap: () => {
                  setState(() {
                    sortByIsSelected[index] = !sortByIsSelected[index];
                  })
                });
      }),
    );
    var priceRangeSlider = SfRangeSliderTheme(
      data: SfRangeSliderThemeData(
        activeTrackColor: MyColors.primaryColor,
        inactiveTrackColor: MyColors.outlineColorOnLight,
        activeTrackHeight: 3,
        labelOffset: const Offset(0, 10.0),
        inactiveTrackHeight: 3,
        thumbStrokeWidth: 3,
        thumbColor: MyColors.secondaryColor,
        thumbStrokeColor: MyColors.primaryColor,
        thumbRadius: 10,
        activeLabelStyle: Theme.of(context).textTheme.titleSmall!,
        inactiveLabelStyle: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: MyColors.grayColor),
      ),
      child: SfRangeSlider(
        edgeLabelPlacement: EdgeLabelPlacement.auto,
        dragMode: SliderDragMode.onThumb,
        min: 0,
        max: 1800,
        values: _values,
        interval: 100,
        showTicks: false,
        enableTooltip: false,
        minorTicksPerInterval: 0,
        shouldAlwaysShowTooltip: false,
        showLabels: true,
        labelPlacement: LabelPlacement.onTicks,
        onChanged: (SfRangeValues values) {
          setState(() {
            _values = values;
          });
        },
        labelFormatterCallback: (actualValue, formattedText) {
          int endvalue = (_values.end / 100).ceil() * 100 - 100;
          int startvalue = (_values.start / 100).ceil() * 100 + 100;
          if (actualValue >= _values.start && actualValue == endvalue) {
            return "\$$formattedText";
          } else if (actualValue == startvalue) {
            return "\$$formattedText";
          }
          if (actualValue == 0) {
            return "\$$formattedText";
          }
          if (actualValue == 1800) {
            return "\$$formattedText";
          } else {
            return '';
          }
        },
      ),
    );
    var filterChips = Wrap(
      alignment: WrapAlignment.start,
      spacing: 5,
      runSpacing: 5,
      children: List<Widget>.generate(filterChipsData.length, (index) {
        return MyChip(
            label: filterChipsData[index],
            isSelected: filterIsSelected[index],
            primaryColor: MyColors.primaryColor,
            secondaryColor: MyColors.secondaryColor,
            outlineColorOnLight: MyColors.outlineColorOnLight,
            textTheme: Theme.of(context).textTheme,
            onTap: () => {
                  setState(() {
                    filterIsSelected[index] = !filterIsSelected[index];
                  })
                });
      }),
    );
    return Scaffold(
        key: scaffoldKey,
        appBar: MyAppbar(
          scaffoldKey: scaffoldKey,
          actionBgColor: Colors.transparent,
          actionIcon: "assets/icons/search.png",
          leadingIcon: "assets/icons/arrow-smooth-left.png",
          padding: padding2,
          onpressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(padding5),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Filter",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  filterChips,
                  const SizedBox(
                    height: padding3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Price Range",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  priceRangeSlider,
                  const SizedBox(
                    height: padding3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sort By",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  sortByChips,
                  const SizedBox(
                    height: padding3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Rating",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: padding3,
                  ),
                  Table(
                    defaultColumnWidth: const FlexColumnWidth(1),
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(1),
                      4: FlexColumnWidth(1),
                      5: FlexColumnWidth(6),
                      6: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(children: [
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const Spacer(),
                        SizedBox(
                            height: 25, width: 15, child: ToggleIconButton()),
                      ]),
                      TableRow(children: [
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const Spacer(),
                        const Spacer(),
                        SizedBox(
                            height: 25, width: 15, child: ToggleIconButton()),
                      ]),
                      TableRow(children: [
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const Spacer(),
                        const Spacer(),
                        const Spacer(),
                        SizedBox(
                            height: 25, width: 15, child: ToggleIconButton()),
                      ]),
                      TableRow(children: [
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const ImageIcon(
                          AssetImage(
                            "assets/icons/rating-star-filled.png",
                          ),
                          size: 13,
                          color: MyColors.ratingStarColor,
                        ),
                        const Spacer(),
                        const Spacer(),
                        const Spacer(),
                        const Spacer(),
                        SizedBox(
                            height: 25, width: 15, child: ToggleIconButton()),
                      ]),
                    ],
                  ),
                  const SizedBox(
                    height: padding3,
                  ),
                  ElevatedButton(
                    child: SizedBox(
                      width: width(context) * .8,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Apply Now",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: MyColors.secondaryColor),
                          )
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(RoutesManager.home);
                    },
                  ),
                ]),
          ),
        ));
  }
}

class MyChip extends StatelessWidget {
  final Widget label;
  final bool isSelected;
  final Color primaryColor;
  final Color secondaryColor;
  final Color outlineColorOnLight;
  final TextTheme textTheme;
  final VoidCallback? onTap;
  final double borderRadius;
  final bool isCircle;
  final double height;
  final double padding;

  const MyChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.primaryColor,
    required this.secondaryColor,
    required this.outlineColorOnLight,
    required this.textTheme,
    required this.onTap,
    this.borderRadius = 20,
    this.isCircle = false,
    this.height = 35,
    this.padding = padding1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: InkWell(
        onTap: onTap,
        child: Chip(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 0),
          label: label,
          backgroundColor: isSelected ? primaryColor : secondaryColor,
          shape: isCircle
              ? const CircleBorder()
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  side: BorderSide(color: outlineColorOnLight),
                ),
          labelStyle: textTheme.titleSmall!.copyWith(
            color: isSelected ? secondaryColor : primaryColor,
          ),
        ),
      ),
    );
  }
}

class ToggleIconButton extends StatefulWidget {
  @override
  _ToggleIconButtonState createState() => _ToggleIconButtonState();
}

class _ToggleIconButtonState extends State<ToggleIconButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: Icon(
        _isSelected ? Icons.check_circle : Icons.circle,
        size: 15,
        color: _isSelected ? MyColors.primaryColor : MyColors.accentColorDark,
      ),
      onPressed: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
    );
  }
}

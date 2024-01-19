import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class OrderTrackingScreen extends StatefulWidget {
  OrderTrackingScreen({super.key});

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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding5),
          child: CommonWidgets.searchBarWithIconButton(context: context),
        ),
        Container(child: TrackSlider(values: _values)),
      ]),
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
    return Padding(
        padding: const EdgeInsets.all(padding5),
        child: Center(
            child: SfRangeSliderTheme(
                data: SfRangeSliderThemeData(
                  thumbColor: Colors.transparent,
                  thumbRadius: 13,
                  activeDividerStrokeWidth: 2,
                  inactiveDividerColor: MyColors.inactiveDividerColor,
                  inactiveDividerStrokeWidth: 2,
                  inactiveDividerStrokeColor: MyColors.secondaryColor,
                  inactiveDividerRadius: 10,
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
                ))));
  }
}

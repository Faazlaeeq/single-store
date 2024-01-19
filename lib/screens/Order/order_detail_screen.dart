import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(
          scaffoldKey: scaffoldKey,
          showTrailingIcon: false,
        ),
        body: Column(
          children: [
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
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';
import 'package:single_store/widgets/border_test_widget.dart';
import 'package:single_store/widgets/common_widgets.dart';
import 'package:single_store/widgets/my_appbar_widget.dart';

class ProfileSettingsScreen extends StatefulWidget {
  ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool switchValue = true;

  final pageContentforSection2 = [
    {
      "img": "assets/icons/language-with-bg.png",
      "title": "Language",
      "link": "",
      "currentLanguage": "English"
    },
    {
      "img": "assets/icons/notifications-with-bg.png",
      "title": "Notifications",
      "link": ""
    },
    {"img": "assets/icons/help-with-bg.png", "title": "Help", "link": ""}
  ];

  bool genderValue = true;

  @override
  Widget build(BuildContext context) {
    var formWidget = Padding(
      padding: const EdgeInsets.all(padding5),
      child: Table(
        columnWidths: const {0: FlexColumnWidth(0.7), 1: FlexColumnWidth(1.3)},
        children: [
          TableRow(children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding2, vertical: padding2),
                child: Text(
                  "Name",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: MyColors.subtitleColor2),
                )),
            SizedBox(
              height: 35,
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MyColors.accentColorDark)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MyColors.accentColorDark)),
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding2, vertical: padding2),
                child: Text(
                  textAlign: TextAlign.left,
                  "Email",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: MyColors.subtitleColor2),
                )),
            SizedBox(
              height: 35,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MyColors.accentColorDark)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MyColors.accentColorDark)),
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding2, vertical: padding2),
              child: Text(
                "Gender",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: MyColors.subtitleColor2),
              ),
            ),
            SizedBox(
                height: 40,
                child: Row(children: [
                  ToggleButtons(
                      selectedColor: MyColors.secondaryColor,
                      color: MyColors.subtitleColor2,
                      fillColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      selectedBorderColor: Colors.transparent,
                      onPressed: (a) => setState(() {
                            genderValue = !genderValue;
                          }),
                      isSelected: [
                        genderValue,
                        !genderValue
                      ],
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: genderValue
                                ? MyColors.primaryColor
                                : MyColors.secondaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.all(padding1),
                          padding: const EdgeInsets.symmetric(
                              vertical: padding1, horizontal: padding1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 25,
                                child: Radio(
                                  activeColor: MyColors.secondaryColor,
                                  value: genderValue,
                                  groupValue: true,
                                  onChanged: (s) {
                                    setState(() {
                                      genderValue = s!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: !genderValue
                                ? MyColors.primaryColor
                                : MyColors.secondaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.all(padding1),
                          padding: const EdgeInsets.symmetric(
                              vertical: padding1, horizontal: padding1),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 25,
                                child: Radio(
                                  activeColor: MyColors.secondaryColor,
                                  value: genderValue,
                                  groupValue: false,
                                  onChanged: (s) {
                                    setState(() {
                                      genderValue = s!;
                                    });
                                  },
                                ),
                              ),
                              const Text(
                                "Female",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
                              )
                            ],
                          ),
                        )
                      ]),
                ]))
          ]),
          TableRow(children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding2, vertical: padding2),
                child: Text(
                  "Age",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: MyColors.subtitleColor2),
                )),
            SizedBox(
              height: 35,
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MyColors.accentColorDark)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: MyColors.accentColorDark)),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppbar(
        scaffoldKey: scaffoldKey,
        leadingIcon: "assets/icons/arrow-smooth-left.png",
        onpressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(padding1),
                  child: Image.asset("assets/images/profile-potrait2.png"),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(3),
                          backgroundColor: MyColors.mSecondaryColor,
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(0)),
                        ),
                        child: const ImageIcon(
                          AssetImage("assets/icons/edit.png"),
                          size: 10,
                          color: MyColors.primaryColor,
                        ),
                      ),
                    ))
              ],
            ),
            Text("Upload Image", style: Theme.of(context).textTheme.titleSmall),
            formWidget,
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding5, vertical: padding2),
              child: CommonWidgets.headingText(context, "Settings"),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: MyColors.outlineColorOnLight, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(
                    horizontal: padding4, vertical: padding1),
                padding: const EdgeInsets.symmetric(
                    horizontal: 0, vertical: padding2),
                child: Column(
                    children: pageContentforSection2
                        .map((e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: padding1, vertical: padding1),
                              child: ListTile(
                                leading: Image.asset(e["img"] as String),
                                title: Text(e["title"] as String,
                                    style:
                                        Theme.of(context).textTheme.titleSmall),
                                trailing: e["title"] == "Notifications"
                                    ? SizedBox(
                                        height: 20,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Switch(
                                              value: switchValue,
                                              inactiveThumbColor:
                                                  MyColors.subtitleColor2,
                                              inactiveTrackColor:
                                                  MyColors.accentColorDark,
                                              onChanged: (e) {
                                                setState(() {
                                                  switchValue = !switchValue;
                                                });
                                              }),
                                        ),
                                      )
                                    : const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 10,
                                      ),
                                onTap: () {
                                  e["link"] != ""
                                      ? Navigator.of(context)
                                          .pushNamed(e["link"] as String)
                                      : null;
                                },
                              ),
                            ))
                        .toList())),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding5, vertical: padding2),
              child: CommonWidgets.roundedButton(
                context: context,
                text: "Logout",
                widthInPercent: 100,
                borderRadius: 10,
                preffixIcon: const ImageIcon(
                  AssetImage("assets/icons/logout.png"),
                  size: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

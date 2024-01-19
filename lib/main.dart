import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/my_theme.dart';

void main() {
  String initialRoute = RoutesManager.onboard;

  assert(() {
    // In debug mode
    initialRoute = RoutesManager.home;
    return true;
  }(), '');

  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialRoute});

  final String initialRoute;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: MyColors.primaryColor, // Set status bar color
      systemNavigationBarColor:
          MyColors.primaryColor, // Set navigation bar color
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme(context),
      themeMode: ThemeMode.light,
      onGenerateRoute: (settings) => RoutesManager().generateRoute(settings),
      initialRoute: initialRoute,
    );
  }
}

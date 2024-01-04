import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme(context),
      themeMode: ThemeMode.light,
      onGenerateRoute: (settings) => RoutesManager().generateRoute(settings),
      initialRoute: RoutesManager.open,
    );
  }
}

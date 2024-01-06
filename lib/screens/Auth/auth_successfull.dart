import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/sizes.dart';

class AuthSuccessfullScreen extends StatelessWidget {
  const AuthSuccessfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/successful-check.png"),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Sucessfull!",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: padding3 * 3, vertical: padding3),
                    child: Text(
                      "You have successfully registered in our app and start working in it.!",
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(padding3),
              width: double.maxFinite,
              height: 50,
              child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RoutesManager.home);
                  },
                  child: const Text("Start Shopping")),
            )
          ],
        ),
      ),
    );
  }
}

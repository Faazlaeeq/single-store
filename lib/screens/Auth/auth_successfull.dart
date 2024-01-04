import 'package:flutter/material.dart';
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
                  SizedBox(
                    height: height(context) / 50,
                  ),
                  Text(
                    "Sucessfull!",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: padding * 3, vertical: padding),
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
              margin: const EdgeInsets.all(padding),
              width: double.maxFinite,
              height: 50,
              child: FilledButton(
                  onPressed: () {}, child: const Text("Start Shopping")),
            )
          ],
        ),
      ),
    );
  }
}

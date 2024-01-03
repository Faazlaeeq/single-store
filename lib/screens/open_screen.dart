import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/open_screen.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: Theme.of(context).filledButtonTheme.style!.copyWith(
                      backgroundColor: MyColors.mSecondaryColor,
                      foregroundColor: MyColors.mPrimaryColor,
                    ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: Theme.of(context).filledButtonTheme.style!.copyWith(
                      backgroundColor: MyColors.mSecondaryColor,
                      foregroundColor: MyColors.mPrimaryColor,
                    ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}

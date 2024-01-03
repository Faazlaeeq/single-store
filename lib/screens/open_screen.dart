import 'package:flutter/material.dart';
import 'package:single_store/routes/route_manager.dart';
import 'package:single_store/theme/my_colors.dart';
import 'package:single_store/theme/sizes.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.primaryColor,
        image: DecorationImage(
          opacity: 0.3,
          image: AssetImage("assets/images/open-bg-img.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
              height: MediaQuery.of(context).size.height * 0.5,
              image: const AssetImage("assets/images/logo-white.png")),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(
                bottom: padding / 2, left: padding, right: padding),
            height: 50,
            child: FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesManager.onboard);
                },
                style: Theme.of(context).filledButtonTheme.style!.copyWith(
                      backgroundColor: MyColors.mSecondaryColor,
                      foregroundColor: MyColors.mPrimaryColor,
                    ),
                child: const Text(
                  "Login",
                )),
          ),
          Container(
            margin: const EdgeInsets.only(
                bottom: padding * 2, left: padding, right: padding),
            width: double.maxFinite,
            height: 50,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesManager.onboard);
                },
                child: const Text(
                  "Sign Up",
                )),
          ),
        ],
      ),
    );
  }
}

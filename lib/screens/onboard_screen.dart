import 'package:flutter/material.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageView.builder(itemBuilder: (context, index) {
          return Container(
            color: Colors.red,
          );
        }),
      ],
    );
  }
}

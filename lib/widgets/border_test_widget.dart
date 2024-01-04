import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget TestBorderWidget({required Widget child}) {
  return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 1,
        ),
      ),
      child: child);
}

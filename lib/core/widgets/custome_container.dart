import 'dart:ffi';

import 'package:doptica_app/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({super.key, required this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              tileMode: TileMode.repeated,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
            0.2,
            0.5,
            0.6
          ],
              colors: [
            kPrimaryColor,
            kSeconderyColor,
            kPrimaryColor,
          ])),
      child: widget,
    );
  }
}

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
              tileMode: TileMode.clamp,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
            0.1,
            0.2,
            0.7,
            1
          ],
              colors: [
            kSeconderyColor,
            kPrimaryColor,
            kPrimaryColor,
            kSeconderyColor,
          ])),
      child: widget,
    );
  }
}

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
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
            0.1,
            0.50,
            0.50,
            0.40,
            0.50,
            0.50
          ],
              colors: [
            kSeconderyColor,
            kPrimaryColor,
            kPrimaryColor,
            kSeconderyColor,
            kPrimaryColor,
            kPrimaryColor,
          ])),
      child: widget,
    );
  }
}

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
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [kPrimaryColor, kSeconderyColor])),
      child: widget,
    );
  }
}

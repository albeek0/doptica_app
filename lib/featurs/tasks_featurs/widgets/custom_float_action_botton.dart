import 'package:doptica_app/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFloatActhion extends StatelessWidget {
  const CustomFloatActhion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      color: kSeconderyColor,
      child: IconButton(onPressed: () {}, icon: Icon(Icons.battery_0_bar)),
    );
  }
}

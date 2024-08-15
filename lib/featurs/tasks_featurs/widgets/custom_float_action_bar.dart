import 'package:doptica_app/constans.dart';

import 'package:flutter/material.dart';

class CustomFloatActionBar extends StatelessWidget {
  const CustomFloatActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kSeconderyColor,
      onPressed: () {},
      child: const Icon(
        Icons.battery_0_bar,
        color: kIconsColor,
      ),
    );
  }
}
//
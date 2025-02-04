import 'package:doptica_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconWithText({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
          ),
          const SizedBox(
              width: 20), // Adjust spacing between icon and text as needed
          Text(
            text,
            style: AppStyles.styleOpenSansBold24,
          ),
        ],
      ),
    );
  }
}

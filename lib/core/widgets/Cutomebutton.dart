import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.text,
    required this.color, required this.ontap,
  });
  final String text;
  final Color color;
  final   ontap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        height: 50,
        width: 300,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 22),
        )),
      ),
    );
  }
}

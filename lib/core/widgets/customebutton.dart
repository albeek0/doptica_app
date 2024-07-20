import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.text,
    required this.color,
    required this.ontap,
  });
  final String text;
  final Color color;
  // ignore: prefer_typing_uninitialized_variables
  final  ontap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: SizedBox(
        height: 30,
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

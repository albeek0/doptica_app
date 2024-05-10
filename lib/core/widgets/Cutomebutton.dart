import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        height: 50,
        width: 300,
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 22),
        )),
      ),
    );
  }
}

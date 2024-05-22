import 'package:flutter/material.dart';

class CustomeCircleAvatar extends StatelessWidget {
  const CustomeCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(70)),
      width: 100,
      height: 100,
    );
  }
}

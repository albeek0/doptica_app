import 'package:flutter/material.dart';

class CustomeCircleAvatar extends StatelessWidget {
  const CustomeCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(top: 10, left: 40),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(70)),
                  width: 140,
                  height: 140,
                ),
              );
  }
}
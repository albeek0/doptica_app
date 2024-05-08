import 'package:doptica_app/constans.dart';
import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
              ),
              label: "home",
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: ""),
        ]);
  }
}

import 'package:doptica_app/constans.dart';
import 'package:flutter/material.dart';

class CutomeNavBar extends StatelessWidget {
  const CutomeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(backgroundColor: Colors.transparent,indicatorColor: kPrimaryColor,overlayColor:MaterialStatePropertyAll(Colors.transparent),
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: ""),
        NavigationDestination(icon: Icon(Icons.person), label: ""),
        NavigationDestination(icon: Icon(Icons.settings), label: ""),
        NavigationDestination(icon: Icon(Icons.task), label: "")
      ],
    );
  }
}

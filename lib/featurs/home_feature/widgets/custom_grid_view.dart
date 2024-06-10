import 'package:flutter/material.dart';

import 'custome_icons.dart';

class CoustomGridView extends StatelessWidget {
  CoustomGridView({
    super.key,
  });

  final List<IconData> icons = [
    Icons.assignment_turned_in_outlined,
    Icons.assignment_late_sharp,
    Icons.boy_outlined,
    Icons.analytics_outlined
  ];
  final List<String> text = ['Tasks', 'Alarms', 'Members', 'Analytics'];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 61, mainAxisSpacing: 50
              //  childAspectRatio: 2 / 2
              ),
          itemBuilder: (context, index) {
            return CustomeIcons(icons: icons, text: text, index: index,);
          },
        ),
      ),
    );
  }
}


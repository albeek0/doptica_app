import 'package:flutter/cupertino.dart';

import '../../../constans.dart';

class CustomeIcons extends StatelessWidget {
  const CustomeIcons({
    super.key,
    required this.icons,
    required this.text, required this.index,
  });
  final int index;
  final List<IconData> icons;
  final List<String> text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: kGridColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Icon(
              icons[index],
              size: 50,
              color: kPrimaryColor,
            ),
            Text(
              text[index],
              style: const TextStyle(fontSize: 18, color: kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}

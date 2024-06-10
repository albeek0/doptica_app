import 'package:flutter/material.dart';

class CutomeHintText extends StatelessWidget {
  const CutomeHintText({super.key, required this.hint, required this.right});
  final String hint;
  final double right;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: right, bottom: 5),
      child: Text(
        hint,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

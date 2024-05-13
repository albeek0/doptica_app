import 'package:flutter/material.dart';

class CutomeHintText extends StatelessWidget {
  const CutomeHintText({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 250, bottom: 5),
      child: Text(
        hint,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

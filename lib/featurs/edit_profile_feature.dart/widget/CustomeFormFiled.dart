import 'package:flutter/material.dart';

class CustomeFormFiled extends StatelessWidget {
  const CustomeFormFiled({
    required this.hint2,
    super.key,
    required this.label,
  });
  final String label;
  final String hint2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: TextFormField(
          decoration: InputDecoration(
              label: Text(label),
              hintText: hint2,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(6))),
        ),
      ),
    );
  }
}

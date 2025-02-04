import 'package:flutter/material.dart';

class CustomeFormFiled extends StatelessWidget {
  const CustomeFormFiled({
    super.key,
    required this.label,
    required this.controller,
    required this.hint2,
  });

  final TextEditingController controller;
  final String label;
  final String hint2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 45,
        width: 350,
        child: TextFormField(
          controller: controller,
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

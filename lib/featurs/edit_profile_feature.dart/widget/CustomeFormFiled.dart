import 'package:flutter/material.dart';

class CustomeFormFiled extends StatelessWidget {
  const CustomeFormFiled({required this.hint2,
    super.key,
  });
  final String hint2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hint2,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomeFormFiled extends StatelessWidget {
  const CustomeFormFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "enter your email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}

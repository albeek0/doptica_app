import 'package:flutter/material.dart';

class CustomDropBotton extends StatefulWidget {
  const CustomDropBotton({super.key, required this.data});
  final String data;
  @override
  State<CustomDropBotton> createState() => _CustomDropBottonState();
}

class _CustomDropBottonState extends State<CustomDropBotton> {
  String selectedMethod = "none none none";
  List<DropdownMenuItem> ffff = const  [
    DropdownMenuItem(value: "Card", child: Text("card")),
    DropdownMenuItem(value: "Cash", child: Text("Cashe")),
    DropdownMenuItem(value: "frfr", child: Text("hrhr"))
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        hint: Text(widget.data),
        // value: selectedMethod,
        items: ffff,
        onChanged: (val) {
          setState(() {
            selectedMethod = val;
          });
        });
  }
}

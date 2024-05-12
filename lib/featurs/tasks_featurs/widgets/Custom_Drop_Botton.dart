import 'package:doptica_app/constans.dart';
import 'package:flutter/material.dart';

class CustomDropBotton extends StatefulWidget {
  const CustomDropBotton({super.key, required this.data});
  final String data;
  @override
  State<CustomDropBotton> createState() => _CustomDropBottonState();
}

class _CustomDropBottonState extends State<CustomDropBotton> {
  String selectedMethod = "none none none";
  List<DropdownMenuItem> ffff = [
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
// طريقة اخرى


// class DropDownHedar extends StatefulWidget {
//   const DropDownHedar({super.key});

//   @override
//   State<DropDownHedar> createState() => _DropDownState();
// }

// class _DropDownState extends State<DropDownHedar> {
//   var selected = "Filters";
//   List<String> _locations = ['A', 'B', 'C', 'D'];
//   String _selectedLocation = 'Please choose a location';
//   String dropdownValue = 'One';

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       value: dropdownValue,
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//       items: <String>['One', 'Two', 'Three', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       decoration: InputDecoration(
//         labelText: 'Choose an option',
//       ),
//     );
//   }
// }
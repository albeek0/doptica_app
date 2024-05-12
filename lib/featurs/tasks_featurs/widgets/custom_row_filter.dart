import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/custom_row_filter.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/Custom_Drop_Botton.dart';
import 'package:flutter/material.dart';

import 'custom_row_filter.dart';

class CustomRowFilter extends StatelessWidget {
  const CustomRowFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Custombotton(
            data: "incomplete tasks",
            icon: Icons.check,
          ),
          SizedBox(
            width: 10,
          ),
          Custombotton(
            data: "filter",
            icon: Icons.filter_alt,
          ),
          SizedBox(
            width: 10,
          ),
          Custombotton(
            data: "Sort by",
            icon: Icons.sort,
          ),
        ],
      ),
    );
  }
}

class Custombotton extends StatelessWidget {
  const Custombotton({
    super.key,
    required this.data,
    this.icon,
  });
  final IconData? icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(kGridColor)),
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                    height: 218,
                    width: 428,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40, right: 150, top: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Filters",
                            style: AppStyles.styleOpenSansRegular24,
                          ),
                          CustomDropBotton(
                            data: "None",
                          ),
                          CustomDropBotton(
                            data: "Assigned",
                          ),
                          CustomDropBotton(
                            data: "Scheduled",
                          )
                        ],
                      ),
                    ));
              });
        },
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            Text(
              data,
              style:
                  AppStyles.styleOpenSansBold10.copyWith(color: Colors.black),
            )
          ],
        ));
  }
}


// class test1 extends StatefulWidget {
//   const test1({super.key});

//   @override
//   State<test1> createState() => _test1State();
// }

// class _test1State extends State<test1> {
//   String selectedMethod = "none none none";
//   List<DropdownMenuItem> ffff = [
//     DropdownMenuItem(value: "Card", child: Text("card")),
//     DropdownMenuItem(value: "Cash", child: Text("Cashe")),
//     DropdownMenuItem(value: "frfr", child: Text("hrhr"))
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: kGridColor,
//       child: DropdownButtonFormField(
//           items: ffff,
//           onChanged: (val) {
//             setState(() {
//               selectedMethod = val;
//             });
//           }),
//     );
//   }
// }












// class DropDownHedar extends StatefulWidget {
//   const DropDownHedar({super.key});

//   @override
//   State<DropDownHedar> createState() => _DropDownHedarState();
// }

// class _DropDownHedarState extends State<DropDownHedar> {
//   String dropdownValue = 'One';

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
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
//     );
//   }
// }
 
  


  // return Container(
    //     child: DropdownButton(
    //   value: _selectedLocation,
    //   onChanged: (newValue) {
    //     setState(() {
    //       _selectedLocation = newValue!;
    //     });
    //   },
    //   items: _locations.map((String location) {
    //     return DropdownMenuItem<String>(
    //       value: _selectedLocation,
    //       child: Text(location),
    //     );
    //   }).toList(),
    // ));








  // DropdownMenuItem<String>(
        //   child: Text("one"),
        //   value: "one",
        // ),
        // DropdownMenuItem<String>(
        //   child: Text("one"),
        //   value: "one",
        // ),
        // DropdownMenuItem<String>(
        //   child: Text("one"),
        //   value: "one",
        // )



// Padding(
//       padding: const EdgeInsets.only(left: 25),
//       child: Row(
//         children: [
//           ElevatedButton(
//               style: const ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(kGridColor)),
//               onPressed: () {},
//               child: const Row(
//                 children: [
//                   Icon(
//                     Icons.check,
//                     color: Colors.green,
//                   ),
//                   Text(
//                     "incomplete tasks",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 10),
//                   ),
//                 ],
//               )),
//           const SizedBox(
//             width: 10,
//           ),
//           ElevatedButton(
//               style: const ButtonStyle(
//                 backgroundColor: MaterialStatePropertyAll(kGridColor),
//               ),
//               onPressed: () {},
//               child: const Row(
//                 children: [
//                   Icon(
//                     Icons.filter,
//                     color: Colors.green,
//                   ),
//                   Text(
//                     "filtirs",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 10),
//                   ),
//                 ],
//               )),
//           const SizedBox(
//             width: 10,
//           ),
//           ElevatedButton(
//               style: const ButtonStyle(
//                 backgroundColor: MaterialStatePropertyAll(kGridColor),
//               ),
//               onPressed: () {},
//               child: const Row(
//                 children: [
//                   Icon(
//                     Icons.sort_by_alpha,
//                     color: Colors.green,
//                   ),
//                   Text(
//                     "Sort by",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 10),
//                   ),
//                 ],
//               )),
//         ],
//       ),
//     );

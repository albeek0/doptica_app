import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/edit_profile_view.dart';
import 'package:doptica_app/featurs/home_feature/home_view.dart';
import 'package:doptica_app/featurs/profile_feature/profile_view.dart';
import 'package:doptica_app/featurs/tasks_featurs/tasks_view.dart';
import 'package:flutter/material.dart';

class navitagationView extends StatefulWidget {
  const navitagationView({
    super.key,
  });

  @override
  State<navitagationView> createState() => _navitagationViewState();
}

class _navitagationViewState extends State<navitagationView> {
  int selected = 0;
  List<Widget> listWidgets = const [
    HomeView(),
    TasksView(),
    ProfileView(),
    EditProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryColor,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: "")
          ]),
      body: Center(
        child: listWidgets[selected],
      ),
    );
  }
}
// BottomNavigationBar(
//         onTap: (value) {
//           setState(() {
//             selected = value;
//           });
//         },
//         currentIndex: selected,
//         selectedItemColor: Colors.amber,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: kPrimaryColor,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "",
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.task), label: "")
//         ]);
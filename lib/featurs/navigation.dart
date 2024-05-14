import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/edit_profile_view.dart';
import 'package:doptica_app/featurs/home_feature/home_view.dart';
import 'package:doptica_app/featurs/profile_feature/profile_view.dart';
import 'package:doptica_app/featurs/tasks_featurs/tasks_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      bottomNavigationBar: NavigationBar(
        backgroundColor: kSeconderyColor,
        indicatorColor: kPrimaryColor,
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        selectedIndex: selected,
        onDestinationSelected: (value) {
          setState(() {
            selected = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "",
          ),
          NavigationDestination(icon: Icon(Icons.person), label: ""),
          NavigationDestination(icon: Icon(Icons.settings), label: ""),
          NavigationDestination(icon: Icon(Icons.task), label: "")
        ],
      ),
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
import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/home_feature/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: HomeViewBody(),
    );
  }
}










    // bottomNavigationBar: BottomNavigationBar(
    //       fixedColor: Colors.green,
    //       backgroundColor: kPrimaryColor,
    //       items: const [
    //         BottomNavigationBarItem(
    //             icon: Icon(
    //               Icons.abc,
    //             ),
    //             label: "home",
    //             backgroundColor: Colors.amber),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.person),
    //           label: "",
    //         ),
    //         BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
    //         BottomNavigationBarItem(icon: Icon(Icons.check), label: ""),
    //       ]),
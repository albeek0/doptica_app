import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/edit_profile_view.dart';
import 'package:doptica_app/featurs/home_feature/widgets/custom_navigator_bar.dart';
import 'package:doptica_app/featurs/home_feature/widgets/home_view_body.dart';
import 'package:doptica_app/featurs/profile_feature/profile_view.dart';
import 'package:doptica_app/featurs/tasks_featurs/tasks_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: HomeViewBody(),
    );
  }
}

// int selectedIndex = 0;
  // List<Widget> screens = const [
  //   HomeView(),
  //   TasksView(),
  //   ProfileView(),
  //   EditProfileView()
  // ];
  // bottomNavigationBar: BottomNavigationBar(
  //         backgroundColor: kPrimaryColor,
  //         type: BottomNavigationBarType.fixed,
  //         items: const [
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.home,
  //               ),
  //               label: ""),
  //           BottomNavigationBarItem(
  //             icon: Icon(Icons.person),
  //             label: "",
  //           ),
  //           BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
  //           BottomNavigationBarItem(icon: Icon(Icons.check), label: ""),
  //         ]),
  //     // CustomNavigatorBar(),
     








      // Padding(
      //   padding: EdgeInsets.only(left: 50, right: 50),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             selected = true;
      //           });
      //         },
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           color: selected ? kSeconderyColor : kPrimaryColor,
      //           child: Center(
      //             child: Icon(Icons.home),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             selected = true;
                  // GoRouter.of(context).push(AppRouter.kTasksView);
      //           });
      //         },
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           color: selected ? kSeconderyColor : kPrimaryColor,
      //           child: Center(
      //             child: Icon(Icons.person),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             selected = true;
      //           });
      //         },
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           color: selected ? kSeconderyColor : kPrimaryColor,
      //           child: Center(
      //             child: Icon(Icons.home),
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             selected = true;
      //           });
      //         },
      //         child: Container(
      //           child: Center(
      //             child: Icon(Icons.home),
      //           ),
      //           height: 50,
      //           width: 50,
      //           color: selected ? kSeconderyColor : kPrimaryColor,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
     
import 'package:doptica_app/core/widgets/custom_app_bar_new.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/core/widgets/customenavbar.dart';
import 'package:doptica_app/featurs/home_feature/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
        widget: Scaffold(
      appBar: CuotomeAppBar(
        label: "Home",
      ),
      backgroundColor: Colors.transparent,
      body: HomeViewBody(),
      bottomNavigationBar: CutomeNavBar(),
    ));
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
     
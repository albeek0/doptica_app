import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/groubs_feature/groubs_view.dart';
import 'package:doptica_app/featurs/home_feature/home_view.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/tasks_view.dart';
import 'package:flutter/material.dart';

import 'posts_feature/posts_screen.dart';

class NavitagationView extends StatefulWidget {
  const NavitagationView({
    super.key,
  });

  @override
  State<NavitagationView> createState() => _NavitagationViewState();
}

class _NavitagationViewState extends State<NavitagationView> {
  int selected = 0;
  List<Widget> listWidgets = const [
    HomeView(),
    GroubsView(),
    PostsScreen(),
    TasksView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        height: 60,
        backgroundColor: kSeconderyColor,
        indicatorColor: kPrimaryColor,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        selectedIndex: selected,
        onDestinationSelected: (value) {
          setState(() {
            selected = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.group),
            label: 'Groupes',
          ),
          NavigationDestination(
              icon: Icon(Icons.newspaper_outlined), label: "Posts"),
          NavigationDestination(icon: Icon(Icons.task), label: "Tasks")
        ],
      ),
      body: Center(
        child: listWidgets[selected],
      ),
    );
  }
}

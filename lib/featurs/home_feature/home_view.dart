import 'package:doptica_app/featurs/home_feature/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff000C38),
      body: HomeViewBody(),
    );
  }
}

import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/home_feature/widgets/home_view_body.dart';
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

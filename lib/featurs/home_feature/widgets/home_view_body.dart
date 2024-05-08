import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:doptica_app/core/widgets/custom_app_bar.dart';
import 'package:doptica_app/featurs/home_feature/widgets/custom_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppar(),
          CoustomGridView(),
        ],
      ),
    );
  }
}

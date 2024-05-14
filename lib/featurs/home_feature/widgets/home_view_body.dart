import 'package:doptica_app/core/widgets/custom_app_bar.dart';
import 'package:doptica_app/featurs/home_feature/widgets/custom_calender.dart';
import 'package:doptica_app/featurs/home_feature/widgets/custom_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final DateTime tody = DateTime.now();

    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 0,
          ),
          CustomAppar(),
          CoustomGridView(),
          CustomCalender(),
        ],
      ),
    );
  }
}

import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppar(),
          CustomRowTask(
            data: "to do",
          )
        ],
      ),
    );
  }
}

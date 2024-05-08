import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/custom_float_action_bar.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/tasks_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatActionBar(),
      backgroundColor: kPrimaryColor,
      body: TasksViewBody(),
    );
  }
}

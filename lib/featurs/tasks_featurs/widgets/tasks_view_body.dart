import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custom_app_bar.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/app_bar_tow.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/custom_row_filter.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/custom_row_task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksViewBody extends StatefulWidget {
  const TasksViewBody({super.key});

  @override
  State<TasksViewBody> createState() => _TasksViewBodyState();
}

class _TasksViewBodyState extends State<TasksViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          AbbarTow(),
          SizedBox(
            height: 50,
          ),
          CustomRowFilter(),
          Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                CustomRowTask(
                  data: "to do",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomRowTask(
                  data: "doing",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomRowTask(
                  data: "done",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

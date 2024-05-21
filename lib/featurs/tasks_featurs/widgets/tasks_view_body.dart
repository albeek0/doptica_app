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
    return ListView(
      children:const  [
SafeArea(
      child: Column(
        children: [
          // AbbarTow(),
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
    )

      ],
    );
  }
}

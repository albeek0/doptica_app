
import 'package:doptica_app/featurs/teams_view_faeture/cubit/teams_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PopupMenuExample extends StatelessWidget {
  const PopupMenuExample(
      {super.key, required this.groubeid, required this.photourl});
  final String groubeid;
  final String photourl;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert), // Trigger icon
      onSelected: (String choice) {
        // Handle menu option selection
        switch (choice) {
          case 'Option 1':
            print('Option 1 selected');
            break;
          case 'Option 2':
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Confirm Delete"),
                    content: const Text(
                        "Are You Sure You Want To Delete The Groub ?!"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(), // Cancel
                        child: const Text("Cancel"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {
                           BlocProvider.of<TeamsViewCubit>(context)
                              .deletegroube(groubeid, photourl);
                          // BlocProvider.of<TeamsViewCubit>(context)
                          //     .fetchGroups();
                          GoRouter.of(context).pop();
                        }, // Confirm
                        child: const Text("Delete"),
                      ),
                    ],
                  );
                });

            print('Option 2 selected');
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Option 1',
            child: Text('Rename'),
          ),
          const PopupMenuItem<String>(
            value: 'Option 2',
            child: Text('Delete'),
          ),
        ];
      },
    );
  }
}

import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/creat_taem_feature/cubit/add_new_team_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const CreateTeamApp());

class CreateTeamApp extends StatelessWidget {
  const CreateTeamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNewTeamCubit, AddNewTeamState>(
      listener: (context, state) {
        if (state is CreatNewTeeamLoading) {
          showDialog(
            context: context,
            barrierDismissible:
                false, // Prevents the user from dismissing the dialog
            builder: (BuildContext context) {
              return const Dialog(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 16),
                      Text("Creating new team..."),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is SuccesfulTeamAdd) {
          Navigator.of(context, rootNavigator: true).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Group created successfully!")),
          );
        } else { Navigator.of(context, rootNavigator: true).pop();
          const SnackBar(content: Text("Somthing Went Wrong Try Again"));
        }
      },
      child: CustomeContainer(
        widget: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            title: const Text('Create Team'),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Handle menu action
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor:
                        Colors.grey[300], // Light grey for placeholder
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt, color: Colors.white),
                      onPressed: () {
                        // Handle profile image selection
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Group Name',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Handle submission or confirmation
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.check, size: 36),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
      ),
    );
  }
}

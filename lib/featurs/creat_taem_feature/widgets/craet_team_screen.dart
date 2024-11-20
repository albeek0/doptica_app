import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/creat_taem_feature/cubit/add_new_team_cubit.dart';
import 'package:doptica_app/featurs/teams_view_faeture/cubit/teams_view_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateTeamApp extends StatelessWidget {
  const CreateTeamApp({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final groupNameController = TextEditingController();
    final groupdescriptionController = TextEditingController();

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
                      Text(
                        "Creating new team...",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is SuccesfulTeamAdd) {
          Navigator.of(context, rootNavigator: true).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Team Created!")),
          );
          BlocProvider.of<TeamsViewCubit>(context).fetchGroups();
          Navigator.of(context, rootNavigator: true).pop();
        } else if (state is FailedTeamAdd) {
          Navigator.of(context, rootNavigator: true).pop();
          showDialog(
            context: context,
            barrierDismissible:
                false, // Prevents the user from dismissing the dialog
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 16),
                      Text(
                        state.error,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
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
            child: SingleChildScrollView(
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
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a group name";
                              }
                              return null;
                            },
                            controller: groupNameController,
                            decoration: const InputDecoration(
                              labelText: 'Group Name',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a group name";
                              }
                              return null;
                            },
                            controller: groupdescriptionController,
                            maxLines: 5,
                            decoration: const InputDecoration(
                              labelText: 'Description',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                final groupName = groupNameController.text;
                final groupdesc = groupdescriptionController.text;

                final userId = FirebaseAuth.instance.currentUser!.uid;

                if (userId.isNotEmpty) {
                 BlocProvider.of<AddNewTeamCubit>(context)
                      .addGroup(groupName, groupdesc);
                       BlocProvider.of<TeamsViewCubit>(context).fetchGroups();
                }
              }
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

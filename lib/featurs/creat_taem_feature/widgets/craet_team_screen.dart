import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const CreateTeamApp());

class CreateTeamApp extends StatelessWidget {
  const CreateTeamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
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
                  labelText: 'Group Name (optional)',
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
    );
  }
}

import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/widgets/custom_app_bar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/Circleavatar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/custome_container.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.chevron_left_sharp),
              onPressed: () {},
            ),
            title: const Text("Edit Profile"),
            actions: [
              IconButton(
                icon: const Icon(Icons.density_medium),
                onPressed: () {},
              )
            ],
          ),
          body: const Column(
            children: [
              CustomeCircleAvatar()
            ],
          )),
    );
  }
}

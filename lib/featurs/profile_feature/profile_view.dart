import 'package:doptica_app/core/widgets/customenavbar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/Circleavatar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/custome_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
          bottomNavigationBar: const CutomeNavBar(),
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
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomeCircleAvatar(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "owner",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
    );
  }

  void returnCustomeContainer({required Scaffold widget}) {}
}

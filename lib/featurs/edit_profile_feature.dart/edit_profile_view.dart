import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/Circleavatar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/CutomeHintText.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/customenavbar.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
          // bottomNavigationBar: const CutomeNavBar(),
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
          body: ListView(children: const [
            Column(
              children: [
                CustomeCircleAvatar(),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "owner",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                CutomeHintText(
                  hint: "email",
                ),
                CustomeFormFiled(
                  hint2: "enter your email",
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CutomeHintText(hint: "password"),
                ),
                CustomeFormFiled(
                  hint2: "enter your password",
                ),
              ],
            ),
          ])),
    );
  }
}

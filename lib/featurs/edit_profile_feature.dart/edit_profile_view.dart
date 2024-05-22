import 'package:doptica_app/core/widgets/custom_app_bar_new.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/Circleavatar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/CutomeHintText.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(

          // bottomNavigationBar: const CutomeNavBar(),
          backgroundColor: Colors.transparent,
          appBar: const CuotomeAppBar(
            label: "Edit Profile ",
          ),
          body: ListView(children: const [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 140),
                  child: CustomeCircleAvatar(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 140),
                  child: Text(
                    "Rani",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
              
              ],
            ),
          ])),
    );
  }
}

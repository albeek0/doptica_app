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
          appBar: const CuotomeAppBar(label: "Edit Profile View",),
          body: ListView(children:  const [
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
                CustomeFormFiled(label: "",
                  hint2: "enter your email",
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CutomeHintText(hint: "password"),
                ),
                CustomeFormFiled(label: "",
                  hint2: "enter your password",
                ),
              ],
            ),
          ])),
    );
  }
}

import 'package:doptica_app/core/widgets/custom_app_bar_new.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/circleavatar.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/cutome_hint_text.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController passsword = TextEditingController();
    TextEditingController conpassword = TextEditingController();

    return CustomeContainer(
      widget: Scaffold(

          // bottomNavigationBar: const CutomeNavBar(),
          backgroundColor: Colors.transparent,
          appBar: const CuotomeAppBar(
            label: "Edit Profile ",
          ),
          body: ListView(children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 1),
                  child: CustomeCircleAvatar(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, right: 1),
                  child: Text(
                    "Rani Ismail",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const CutomeHintText(
                  hint: "Name",
                  right: 290,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomeFormFiled(
                    hint2: "Type your name",
                    label: "",
                    controller: name,
                  ),
                ),
                const CutomeHintText(
                  hint: "UserName",
                  right: 260,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomeFormFiled(
                    hint2: "Type Your Username",
                    label: "",
                    controller: username,
                  ),
                ),
                const CutomeHintText(
                  hint: "Password",
                  right: 260,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomeFormFiled(
                    hint2: "Type Your Password",
                    label: "",
                    controller: passsword,
                  ),
                ),
                const CutomeHintText(
                  hint: "Confirm password",
                  right: 190,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomeFormFiled(
                    hint2: "Confirm Password",
                    label: "",
                    controller: conpassword,
                  ),
                ),
                const CutomeHintText(
                  hint: "Department",
                  right: 250,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomeFormFiled(
                    hint2: "Confirm Password",
                    label: "",
                    controller: conpassword,
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}

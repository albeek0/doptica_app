import 'package:doptica_app/core/utils/constans.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custom_app_bar_new.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/circleavatar.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/profile_feature/widgets/IconWithText.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(

          // bottomNavigationBar: const CutomeNavBar(),
          backgroundColor: Colors.transparent,
          appBar: const CuotomeAppBar(
            label: 'Profile View',
          ),
          body: ListView(
            children:[ Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomeCircleAvatar(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "owner",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "@owner",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Hi im Rani Ismail\n ui ux with DOPTICA\nteam ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(text: "Edit", color: kSeconderyColor, ontap: () {}),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 3,
                  color: Colors.white,
                ),
                const IconWithText(
                    iconData: Icons.settings_outlined, text: "Settings"),
                const IconWithText(
                    iconData: Icons.support_agent_outlined, text: "Support"),
                const IconWithText(iconData: Icons.share, text: "Share"),
                const IconWithText(
                    iconData: Icons.question_mark_outlined, text: "About Us")
              ],
            ),
          ])),
    );
  }
}

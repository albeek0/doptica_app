import 'package:doptica_app/core/utils/app_style.dart';
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
          body: ListView(children:  [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Rani",
                        style: AppStyles.styleOpenSansBold20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 200),
                        child: CustomeCircleAvatar(),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    "ui/ux  designer",
                    style: AppStyles.styleOpenSansBold20,
                  ),
                ),
Container(child: Row(children: [],),)





              ],
            ),
          ])),
    );
  }
}
  // Padding(
  //                 padding: EdgeInsets.only(top: 10, right: 180),
  //                 child: Text(
  //                   "Rani",
  //                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  //                 ),
  //               ),

      // Padding(
      //             padding: EdgeInsets.only(right: 180),
      //             child: CustomeCircleAvatar(),
      //           ),
import 'package:doptica_app/core/widgets/custom_app_bar_new.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/Circleavatar.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
      widget: Scaffold(
          // bottomNavigationBar: const CutomeNavBar(),
          backgroundColor: Colors.transparent,
          appBar: CuotomeAppBar(
            label: 'Profile View',
          ),
          body: Column(
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

}

import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/Cutomebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompleteYourProfile extends StatelessWidget {
  const CompleteYourProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 65,
              ),
              Center(
                child: Image.asset(
                  fit: BoxFit.fill,
                  "assets/images/Logo Doptica f3.png",
                  height: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Complete Your Profile",
                style: AppStyles.styleOpenSansBold20,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 32,
                  width: 281,
                  child:Text("data"))
            ],
          ),
        ),
      ),
    );
  }
}

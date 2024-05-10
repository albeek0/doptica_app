import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/custome_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/images/Logo Doptica f3 1.png",
                // height: 500,
                // width: 700,
              )
            ],
          ),
        ),
      ),
    );
  }
}

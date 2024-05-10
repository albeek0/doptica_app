import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/Cutomebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                height: 30,
              ),
              Center(
                child: Image.asset(
                  fit: BoxFit.fill,
                  "assets/images/Logo Doptica f3.png",
                  height: 40,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 291,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 23,
                      ),
                      Image.asset(
                        "assets/images/Google__G__logo.svg.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Sign In With Google ",
                        style: AppStyles.styleOpenSansRegular18,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

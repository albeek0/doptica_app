import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/app_router.dart';

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
          child: ListView(children: [
            Column(
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
                const Text(
                  "Creat new account",
                  style: AppStyles.styleOpenSansBold24,
                ),
                const SizedBox(
                  height: 100,
                ),
                const CustomeFormFiled(hint2: "", label: "Full name"),
                const SizedBox(
                  height: 20,
                ),
                const CustomeFormFiled(hint2: "", label: "E-mail"),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(
                    ontap: () {
 GoRouter.of(context).push(AppRouter.ksignup2);

                    }, text: "Continue", color: kSeconderyColor),
                const SizedBox(
                  height: 10,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                         GoRouter.of(context).pop();
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 111, 247)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "        By signing up you accept the\n",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "Terms Of Servies",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 111, 247)),
                    ),
                    TextSpan(
                        text: " and ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "Privecy Policeys",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 111, 247)),
                    )
                  ])),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

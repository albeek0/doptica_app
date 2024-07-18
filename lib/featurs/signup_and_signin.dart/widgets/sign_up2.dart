import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:flutter/material.dart';

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController password  = TextEditingController();
  TextEditingController conpassword = TextEditingController();
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
                 CustomeFormFiled(hint2: "", label: "Password", controller: password,),
                const SizedBox(
                  height: 20,
                ),
                 CustomeFormFiled(hint2: "", label: "Confirm Password", controller: conpassword,),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(
                    ontap: () {}, text: "Sign up", color: kSeconderyColor),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "          By signing up you accept the\n",
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

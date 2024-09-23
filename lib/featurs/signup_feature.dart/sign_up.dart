import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/signup_feature.dart/sign_up2.dart';
import 'package:doptica_app/featurs/signup_feature.dart/widgets/sign_up_form_0.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController newusername = TextEditingController();
    TextEditingController newemail = TextEditingController();
    TextEditingController password = TextEditingController();
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
                  height: 10,
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
                  height: 50,
                ),
                SignUpForm0(
                  formkey: formkey,
                  newusername: newusername,
                  newemail: newemail,
                  conpassword: conpassword,
                  password: password,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SignUp2(newmail: newemail.text),
                          ),
                        );
                      }
                    },
                    text: "Continue",
                    color: kSeconderyColor),
                const SizedBox(
                  height: 50,
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
                        GoRouter.of(context).push(AppRouter.kSignIn);
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

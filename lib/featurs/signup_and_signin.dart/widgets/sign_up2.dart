import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/Auth/auth.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  final FireBaseAuth _auth = FireBaseAuth();
  TextEditingController _password = TextEditingController();
  TextEditingController _conpassword = TextEditingController();

  void signup() async {
    String email = _password.text;
    String password = _conpassword.text;

    User? user = await _auth.signupwithemailandpassword(email, password);

    if (user != null) {
      print("success");
      GoRouter.of(context).push(AppRouter.kHomeView);
    } else {
      SnackBar(content: Text("error accord "));
    }
  }

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
                CustomeFormFiled(
                  hint2: "",
                  label: "Password",
                  controller: _password,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomeFormFiled(
                  hint2: "",
                  label: "Confirm Password",
                  controller: _conpassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(
                    ontap: signup, text: "Sign up", color: kSeconderyColor),
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

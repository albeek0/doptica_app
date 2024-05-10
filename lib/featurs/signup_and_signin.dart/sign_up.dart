import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/Cutomebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/signup_and_signin.dart/widgets/sign_in_with_google.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Text text = const Text(
      "Terms of services",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Color.fromARGB(255, 0, 111, 247)),
    );
    Text text2 = const Text(
      "privacy policys",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Color.fromARGB(255, 0, 111, 247)),
    );
    String? text0 = text2.data;
    String? text1 = text.data;
    print(text.data);
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
              const SignInWithGoogle(),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 180),
                child: Text(
                  "Your Email :",
                  style: AppStyles.styleOpenSansRegular18,
                ),
              ),
              SizedBox(
                  width: 283,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(hintText: "YourEmail@Example"),
                  )),
              const SizedBox(
                height: 100,
              ),
              const CustomeButton(
                  text: "Sign Up", color: Color.fromARGB(255, 36, 97, 172)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "LogIn",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 0, 111, 247)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "     By signing up you accept the\n $text1 and $text0 ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

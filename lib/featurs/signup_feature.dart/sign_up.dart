import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/signup_feature.dart/sign_up2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class SignUp extends StatelessWidget {
  const SignUp({super.key});
  
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController newusername = TextEditingController();
    TextEditingController newemail = TextEditingController();
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
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 330,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Full name is required';
                              }
                              // Regular expression to check if the name contains only letters and spaces
                              RegExp nameRegExp = RegExp(r"^[a-zA-Z\s]+$");
                              if (!nameRegExp.hasMatch(value)) {
                                return 'Name can only contain letters and spaces';
                              }
                              // Check if the name contains at least two words (first and last name)
                              if (value.trim().split(' ').length < 2) {
                                return 'Please enter at least first and last name';
                              }
                              return null; // No validation error
                            },
                            controller: newusername,
                            decoration: InputDecoration(
                                label: const Text("Full Name"),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1),
                                    borderRadius: BorderRadius.circular(6))),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 60,
                          width: 330,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            controller: newemail,
                            decoration: InputDecoration(
                                label: const Text("Email"),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 1),
                                    borderRadius: BorderRadius.circular(6))),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp2(newmail: newemail.text),
                  ),
                );
                      }
                    },
                    text: "Continue",
                    color: kSeconderyColor),
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

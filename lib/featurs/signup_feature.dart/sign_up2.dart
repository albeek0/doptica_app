import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/customebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/signup_feature.dart/cubit/sign_up_cubit.dart';
import 'package:doptica_app/featurs/signup_feature.dart/widgets/privcy_terms_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'widgets/sign_up_form.dart';


class SignUp2 extends StatelessWidget {
  final String newmail;
  const SignUp2({super.key, required this.newmail});
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    TextEditingController conpassword = TextEditingController();

    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          showDialog(
            context: context,
            // Prevent manual dismissal
            builder: (context) {
              return const Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
            },
          );
        } else {
          // Ensure the loading dialog is dismissed before showing any other dialogs or navigating
          Navigator.of(context, rootNavigator: true)
              .pop(); // Dismiss the loading dialog

          if (state is SignUpSucces) {
            GoRouter.of(context).push(AppRouter.knavitagationView);
          } else if (state is SignUpfailed) {
            // Display the error dialog
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  elevation: 1000,
                  backgroundColor: kSeconderyColor,
                  title: const Text("Sign Up Error"),
                  content: Text(
                      state.errmessege), // Display the detailed error message
                );
              },
            );
          }
        }
      },
      child: CustomeContainer(
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
                  SignUpForm(formkey: formkey, password: password, conpassword: conpassword),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomeButton(
                      ontap: () {
                        if (formkey.currentState!.validate()) {
                          BlocProvider.of<SignUpCubit>(context)
                              .signup(newmail, password.text);
                        }
                      },
                      text: "Sign up",
                      color: kSeconderyColor),
                  const SizedBox(
                    height: 20,
                  ),
                  const PrivcyTermsText()
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}





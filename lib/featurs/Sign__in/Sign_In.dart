import 'dart:async';

import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/Auth/auth.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/Sign__in/Cubit/signin_cubit/signin_cubit.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/customebutton.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return BlocListener<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninLoading) {
          showDialog(
              context: context,
              builder: (context) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ));
              });
        } else {
          GoRouter.of(context).pop();
          if (state is SigninSucces) {
            GoRouter.of(context).push(AppRouter.knavitagationView);
          } else if (state is SigninFailure) {
            showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    title: Text('somthing went wrong '),
                  );
                });

          
          }
        }
      },
      child: CustomeContainer(
        widget: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(children: [
            SafeArea(
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
                    'Sign In With Your Account',
                    style: AppStyles.styleOpenSansBold20,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 50,
                      width: 300,
                      child: CustomeFormFiled(
                        hint2: '',
                        label: "E-mail",
                        controller: email,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 50,
                      width: 300,
                      child: CustomeFormFiled(
                        hint2: '',
                        label: "Password",
                        controller: password,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomeButton(
                      ontap: () {
                        BlocProvider.of<SigninCubit>(context).signin(
                            email: email.text, password: password.text);
                      },
                      text: "Sign In",
                      color: kSeconderyColor),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Or Sign In With",
                    style: AppStyles.styleOpenSansBold16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15.0),
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/Google__G__logo.svg.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Dont Have An Account?",
                        style: AppStyles.styleOpenSansBold16,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.ksignup);
                        },
                        child: const Text(
                          "    SignUp",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

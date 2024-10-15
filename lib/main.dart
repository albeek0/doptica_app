import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/featurs/Sign__in/Cubit/signin_cubit/signin_cubit.dart';
import 'package:doptica_app/featurs/email_verification_feature/cubit/email_verification_cubit.dart';

import 'package:doptica_app/featurs/signup_feature.dart/cubit/sign_up_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const DopticaApp());
}

class DopticaApp extends StatelessWidget {
  const DopticaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [ BlocProvider<EmailVerificationCubitCubit>(
          create: (context) => EmailVerificationCubitCubit(), // Initialize SignUpCubit
        ),

        BlocProvider<SigninCubit>(
          create: (context) => SigninCubit(), // Initialize SignUpCubit
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(), // Initialize SignUpCubit
        ),
        // Add other providers if needed
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(primaryColorLight: Colors.black),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}

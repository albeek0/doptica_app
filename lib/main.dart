
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/featurs/Sign__in/Cubit/signin_cubit/signin_cubit.dart';
import 'package:doptica_app/featurs/email_verification_feature/cubit/email_verification_cubit.dart';

import 'package:doptica_app/featurs/signup_feature.dart/cubit/sign_up_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Supabase.initialize(
      url: 'https://bitmfkbskybmpxpnfjjo.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJpdG1ma2Jza3libXB4cG5mampvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE0MTk1MjcsImV4cCI6MjA0Njk5NTUyN30.GCDtrbdXEKbOvHzw32L-UmunbM0FlSAw1-mZhaIjihc',);

  runApp(const DopticaApp());
}

class DopticaApp extends StatelessWidget {
  const DopticaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EmailVerificationCubitCubit>(
          create: (context) =>
              EmailVerificationCubitCubit(), // Initialize SignUpCubit
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

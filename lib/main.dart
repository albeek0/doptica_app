import 'package:doptica_app/core/utils/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  Firebase.initializeApp;
  runApp(const DopticaApp());
}

class DopticaApp extends StatelessWidget {
  const DopticaApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(primaryColorLight: Colors.black),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}

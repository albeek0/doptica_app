import 'package:flutter/material.dart';

void main() {
  runApp(const DopticaApp());
}

class DopticaApp extends StatelessWidget {
  const DopticaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
    );
  }
}

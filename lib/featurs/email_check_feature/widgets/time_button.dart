import 'dart:async';
import 'package:doptica_app/constans.dart';
import 'package:doptica_app/featurs/email_check_feature/cubit/email_verification_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LimitedButtonScreen extends StatefulWidget {
  const LimitedButtonScreen({super.key});

  @override
  LimitedButtonScreenState createState() => LimitedButtonScreenState();
}

class LimitedButtonScreenState extends State<LimitedButtonScreen> {
  bool _isButtonDisabled = false; // To track button status
  int _countdown = 60; // Countdown timer (60 seconds)
  Timer? _timer;

  // Function to handle button press
  void _onButtonPressed() {
    setState(() {
      _isButtonDisabled = true; // Disable the button
      _countdown = 60; // Start countdown from 60
      BlocProvider.of<EmailVerificationCubitCubit>(context).sendemail();
      print("senet????????????");
    });

    // Start the timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown > 0) {
          _countdown--;
        } else {
          _isButtonDisabled =
              false; // Enable the button when countdown finishes
          _timer?.cancel(); // Stop the timer
        }
      });
    });
  }

  @override
  void dispose() {
    // Dispose of the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => kSeconderyColor)),
      onPressed: _isButtonDisabled ? null : _onButtonPressed,
      child: _isButtonDisabled
          ? Text('Wait for $_countdown seconds') // Display countdown
          : const Text('Send Mail'),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LimitedButtonScreen(),
  ));
}

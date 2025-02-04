import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.formkey,
    required this.email,
    required this.password,
  });

  final GlobalKey<FormState> formkey;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 300,
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
              controller: email,
              decoration: InputDecoration(
                  label: const Text("Email"),
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
            width: 300,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              controller: password,
              decoration: InputDecoration(
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6))),
            ),
          ),
        ],
      ),
    );
  }
}

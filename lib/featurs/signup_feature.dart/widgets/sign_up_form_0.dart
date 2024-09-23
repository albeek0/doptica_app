import 'package:flutter/material.dart';

class SignUpForm0 extends StatelessWidget {
  const SignUpForm0(
      {super.key,
      required this.formkey,
      required this.newusername,
      required this.newemail,
      required this.password,
      required this.conpassword});

  final GlobalKey<FormState> formkey;
  final TextEditingController newusername;
  final TextEditingController newemail;
  final TextEditingController password;
  final TextEditingController conpassword;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 330,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  } else if (password.text != conpassword.text) {
                    return "passwords not match";
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 330,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                controller: conpassword,
                decoration: InputDecoration(
                    label: const Text("Confirm Your Password"),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(6))),
              ),
            ),
          ],
        ));
  }
}

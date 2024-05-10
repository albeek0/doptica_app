import 'package:doptica_app/core/widgets/Cutomebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 65,
              ),
              Center(
                child: Image.asset(
                  fit: BoxFit.fill,
                  "assets/images/Logo Doptica f3 1.png",
                  height: 60,
                ),
              ),
              const SizedBox(
                height: 400,
              ),
              const CustomeButton(
                text: "sign up",
                color: Color.fromARGB(200, 45, 123, 220),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: const Text(
                    "log in",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

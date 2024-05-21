import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.transparent,
        ),
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
                const SizedBox(
                    height: 50,
                    width: 300,
                    child: CustomeFormFiled(
                      hint2: '',
                      label: "E-mail",
                    )),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                    height: 50,
                    width: 300,
                    child: CustomeFormFiled(
                      hint2: '',
                      label: "Password",
                    )),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 300,
                  height: 30,
                  child: MaterialButton(
                    onPressed: () {},
                    color: kSeconderyColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      "Sign In ",
                      style: TextStyle(fontSize: 22),
                    )),
                  ),
                ),
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
                      onTap: () {},
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
    );
  }
}

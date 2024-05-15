import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/Cutomebutton.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/widget/customeformfiled.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompleteYourProfile extends StatelessWidget {
  const CompleteYourProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      widget: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
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
                  "Complete Your Profile",
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
                      label: "Full Name",
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
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "must contain at least 8 charchters",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: MaterialButton(
                    onPressed: () {},
                    color: kSeconderyColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const SizedBox(
                      height: 50,
                      width: 300,
                      child: Center(
                          child: Text(
                        "Comlete",
                        style: TextStyle(fontSize: 22),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "           By signing up you accept the\n",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "Terms Of Servies",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 111, 247)),
                    ),
                    TextSpan(
                        text: " and ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "Privecy Policeys",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 111, 247)),
                    )
                  ])),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PrivcyTermsText extends StatelessWidget {
  const PrivcyTermsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {},
      child: RichText(
          text: const TextSpan(children: <TextSpan>[
        TextSpan(
            text: "          By signing up you accept the\n",
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
    );
  }
}
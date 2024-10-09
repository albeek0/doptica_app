import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';

class EmailCheckBody extends StatelessWidget {
  EmailCheckBody({super.key});
  final TextEditingController _codeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
        widget: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset(
              "assets/images/Logo Doptica f3.png",
              width: MediaQuery.of(context).size.width * 3 / 4,
            )),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Verificate Your Eamil",
              style: AppStyles.styleOpenSansRegular24
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enter the 5-digit code sent to your phone:',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    controller: _codeController,
                    keyboardType: TextInputType.number,
                    maxLength: 5,
                    decoration: InputDecoration(
                      focusColor: kPrimaryColor,
                      labelText: 'Verification Code',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    // validator: _validateCode,
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Verify'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    ));
  }
}

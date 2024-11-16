import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/email_verification_feature/cubit/email_verification_cubit.dart';
import 'package:doptica_app/featurs/email_verification_feature/widgets/time_button.dart';
import 'package:doptica_app/featurs/teams_view_faeture/cubit/teams_view_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EmailVerificationBody extends StatelessWidget {
  const EmailVerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmailVerificationCubitCubit,
        EmailVerificationCubitState>(
      listener: (context, state) {
        if (state is EmailVerificationLoading) {
          showDialog(
            context: context,
            // Prevent manual dismissal
            builder: (context) {
              return const Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
            },
          );
        } else {
          // Ensure the loading dialog is dismissed before showing any other dialogs or navigating
          Navigator.of(context, rootNavigator: true).pop();
        }
        if (state is EmailVerificationSucces) {
          context.read<TeamsViewCubit>().fetchGroups();
          GoRouter.of(context).push(AppRouter.kcreatteamview);
        } else if (state is EmailVerificationFailed) {
          // Display the error dialog
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                elevation: 1000,
                backgroundColor: kSeconderyColor,
                title: Text("Sign Up Error"),
                content: Text(
                    "Eamil Not Verified"), // Display the detailed error message
              );
            },
          );
        }
      },
      child: CustomeContainer(
          widget: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.logout_outlined)),
          toolbarHeight: 30,
          backgroundColor: Colors.transparent,
        ),
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
                height: 200,
              ),
              Text(
                "Verificate Your Eamil",
                style: AppStyles.styleOpenSansRegular24
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(kSeconderyColor)),
                    onPressed: () {
                      BlocProvider.of<EmailVerificationCubitCubit>(context)
                          .emailcheck();
                    },
                    child: const Text('Verify'),
                  ),
                  const LimitedButtonScreen(),
                ],
              ),
            ],
          ),
        )),
      )),
    );
  }
}

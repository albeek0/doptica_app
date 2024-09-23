import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TeamViewScreen extends StatelessWidget {
  const TeamViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return CustomeContainer(
        widget: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                      width: screenwidth * 0.60,
                      "assets/images/Logo Doptica f3.png"),
                  SizedBox(
                    width: screenwidth * 0.10,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
                ],
              ),
            ),
            ListTile(
              title: const Text(
                "New Team",
                style: AppStyles.styleOpenSansRegular24,
              ),
              trailing: IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kcreatteamview);
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                  )),
              leading: Image.asset(
                "assets/images/Google__G__logo.svg.png",
                width: screenwidth * 0.10,
                height: screenheight * 0.10,
              ),
            ),
            SizedBox(
              height: screenheight * 0.01,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: screenheight * 0.008,
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context)
                              .push(AppRouter.knavitagationView);
                        },
                        child: ListTile(
                          title: InkWell(
                            onTap: () {
                              GoRouter.of(context)
                                  .push(AppRouter.knavitagationView);
                            },
                            child: const Text(
                              "ADCMK SKSCM ",
                              style: AppStyles.styleOpenSansRegular24,
                            ),
                          ),
                          leading: Image.asset(
                            "assets/images/Google__G__logo.svg.png",
                            width: screenwidth * 0.15,
                            height: screenheight * 0.15,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 1,
                        width: screenwidth * 0.60,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
// ListView.builder(
//   itemCount: items.length,
//   prototypeItem: ListTile(
//     title: Text(items.first),
//   ),
//   itemBuilder: (context, index) {
//     return ListTile(
//       title: Text(items[index]),
//     );
//   },
import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class TeamViewScreen extends StatelessWidget {
  const TeamViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
        widget: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(width: 220, "assets/images/Logo Doptica f3.png"),
                  const SizedBox(
                    width: 40,
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
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      ListTile(
                        title: const Text(
                          "ADCMK SKSCM ",
                          style: AppStyles.styleOpenSansRegular24,
                        ),
                        leading: Image.asset(
                          "assets/images/Google__G__logo.svg.png",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 1,
                        width: 230,
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
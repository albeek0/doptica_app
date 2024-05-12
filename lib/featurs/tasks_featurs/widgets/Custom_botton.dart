import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/featurs/tasks_featurs/widgets/Custom_Drop_Botton.dart';
import 'package:flutter/material.dart';

class Custombotton extends StatelessWidget {
  const Custombotton({
    super.key,
    required this.data,
    this.icon,
  });
  final IconData? icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(kGridColor)),
        onPressed: () {
          _showSnachBar(context);
        },
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            Text(
              data,
              style:
                  AppStyles.styleOpenSansBold10.copyWith(color: Colors.black),
            )
          ],
        ));
  }

  void _showSnachBar(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: 218,
              width: 428,
              child: const Padding(
                padding: EdgeInsets.only(left: 40, right: 150, top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Filters",
                      style: AppStyles.styleOpenSansRegular24,
                    ),
                    CustomDropBotton(
                      data: "None",
                    ),
                    CustomDropBotton(
                      data: "Assigned",
                    ),
                    CustomDropBotton(
                      data: "Scheduled",
                    )
                  ],
                ),
              ));
        });
  }
}

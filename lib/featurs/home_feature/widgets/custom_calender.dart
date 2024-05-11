import 'package:doptica_app/constans.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomCalender extends StatelessWidget {
  const CustomCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kGridColor, borderRadius: BorderRadius.circular(20)),
      height: 220,
      width: 320,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Calendar",
                  style: AppStyles.styleOpenSansBold20
                      .copyWith(color: Colors.black),
                ),
                const Icon(Icons.calendar_month, color: Colors.black)
              ],
            ),
          ),
          Container(
            width: 221,
            height: 169,
            child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.utc(2040),
              onDateChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:doptica_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomCalender extends StatelessWidget {
  const CustomCalender({super.key});
//

//
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
      height: 250,
      width: 320,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Calendar",
                  style: AppStyles.styleOpenSansBold20,
                ),
                Icon(
                  Icons.calendar_month,
                )
              ],
            ),
          ),
          SizedBox(
            width: 221,
            height: 190,
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

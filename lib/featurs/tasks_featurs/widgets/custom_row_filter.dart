import 'package:doptica_app/constans.dart';
import 'package:flutter/material.dart';

class CustomRowFilter extends StatelessWidget {
  const CustomRowFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(kGridColor)),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  Text(
                    "incomplete tasks",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 10),
                  ),
                ],
              )),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kGridColor),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.filter,
                    color: Colors.green,
                  ),
                  Text(
                    "filtirs",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 10),
                  ),
                ],
              )),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kGridColor),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.sort_by_alpha,
                    color: Colors.green,
                  ),
                  Text(
                    "Sort by",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 10),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

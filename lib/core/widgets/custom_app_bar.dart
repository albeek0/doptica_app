import 'package:flutter/material.dart';

class CustomAppar extends StatelessWidget {
  const CustomAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left_sharp),
          onPressed: () {},
        ),
        SizedBox(
          width: 300,
        ),
        IconButton(
          icon: const Icon(Icons.density_medium),
          onPressed: () {},
        )
      ],
    );
  }
}

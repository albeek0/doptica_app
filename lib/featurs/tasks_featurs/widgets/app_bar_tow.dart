import 'package:doptica_app/core/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AbbarTow extends StatelessWidget {
  const AbbarTow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left_sharp),
          onPressed: () {},
        ),
        Text(
          "Tasks",
          style: AppStyles.styleOpenSansBold20,
        ),
        const SizedBox(
          width: 250,
        ),
        IconButton(
          icon: const Icon(Icons.density_medium),
          onPressed: () {},
        )
      ],
    );
  }
}

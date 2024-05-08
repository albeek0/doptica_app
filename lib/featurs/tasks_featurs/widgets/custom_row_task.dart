import 'package:doptica_app/core/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRowTask extends StatelessWidget {
  const CustomRowTask({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data,
          style: AppStyles.styleOpenSansRegular24,
        ),
        const Icon(Icons.expand_more)
      ],
    );
  }
}

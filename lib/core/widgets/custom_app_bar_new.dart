import 'package:doptica_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CuotomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(30);
  const CuotomeAppBar({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        label,
        style: AppStyles.styleOpenSansBold20,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.density_medium),
          onPressed: () {},
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
class CuotomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);
  const CuotomeAppBar({
    super.key, required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title:  Text(label),
      actions: [
        IconButton(
          icon: const Icon(Icons.density_medium),
          onPressed: () {},
        )
      ],
    );
  }
}

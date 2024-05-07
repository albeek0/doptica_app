import 'package:flutter/material.dart';

class CoustomGridView extends StatelessWidget {
  const CoustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.amber,
              height: 500,
              width: 500,
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CoustomGridView extends StatelessWidget {
  const CoustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 50, left: 50),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 61, mainAxisSpacing: 50
              //  childAspectRatio: 2 / 2
              ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            );
          },
        ),
      ),
    );
  }
}

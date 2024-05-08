import 'package:doptica_app/core/widgets/custom_app_bar.dart';
import 'package:doptica_app/featurs/home_feature/widgets/custom_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 25,
              ),
              CustomAppar(),
              Positioned(
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/Logo Doptica f3 1.png",
                    ),
                  ),
                ),
              )
            ],
          ),
          CoustomGridView()
        ],
      ),
    );
  }
}
// Image(
//                       image: AssetImage("assets/images/Logo Doptica f3 1.png"))
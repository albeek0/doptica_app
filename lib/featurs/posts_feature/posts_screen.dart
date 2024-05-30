import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/core/widgets/customenavbar.dart';
import 'package:doptica_app/featurs/posts_feature/posts.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/custom_app_bar_new.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
        widget: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const CuotomeAppBar(
        label: 'Posts',
      ),
      bottomNavigationBar: const CutomeNavBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 30),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 175, bottom: 5, top: 5),
              child: Text(
                "Hello User",
                style: AppStyles.styleOpenSansBold24,
              ),
            ),
            PostsWidget()
          ],
        ),
      ),
    ));
  }
}


import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/posts_feature/posts_view.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_app_bar_new.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainer(
        widget: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CuotomeAppBar(
        label: 'Posts',
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello User",
                style: AppStyles.styleOpenSansBold24,
              ),
              PostsWidget()
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/featurs/teams_view_faeture/widgets/popup_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GroubsListBody extends StatelessWidget {
  const GroubsListBody({
    super.key,
    required this.groups,
    required this.screenheight,
    required this.screenwidth,
  });

  final List<Map<String, dynamic>> groups;
  final double screenheight;
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (BuildContext context, int index) {
          final group = groups[index];

          return Column(
            children: [
              SizedBox(height: screenheight * 0.010),
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.knavitagationView);
                },
                child: ListTile(
                  trailing: PopupMenuExample(groubeid: group['id'],
                  photourl: group["photo_url"] ?? "https://bitmfkbskybmpxpnfjjo.supabase.co/storage/v1/object/public/group_photos/group_photos/groube_def.png?t=2025-01-02T14%3A50%3A21.105Z" ,
                  ),
                  title: InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.knavitagationView);
                    },
                    child: Text(
                      group['name'] ?? 'Unnamed Group',
                      style: AppStyles.styleOpenSansRegular24,
                    ),
                  ),
                  leading: group['photo_url'] != null
                      ? ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          child: Image.network(
                            group['photo_url'],
                            width: screenwidth * 0.15,
                            height: screenheight * 0.15,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              "assets/images/groube_def.png",
                              width: screenwidth * 0.15,
                              height: screenheight * 0.15,
                            ),
                          ),
                        )
                      : Image.asset(
                          "assets/images/groube_def.png",
                          width: screenwidth * 0.15,
                          height: screenheight * 0.15,
                        ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 1,
                width: screenwidth * 0.70,
              ),
            ],
          );
        },
      ),
    );
  }
}

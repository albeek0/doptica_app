import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/teams_view_faeture/cubit/teams_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TeamViewScreen extends StatefulWidget {
  const TeamViewScreen({super.key});

  @override
  _TeamViewScreenState createState() => _TeamViewScreenState();
}

class _TeamViewScreenState extends State<TeamViewScreen> {
  @override
  void initState() {
    super.initState();

    // Get the current user ID from Supabase
    final userId = Supabase.instance.client.auth.currentUser?.id;

    // Check if userId is not null before calling fetchGroups
    if (userId != null) {
      // Fetch groups by calling the fetchGroups method of the TeamsViewCubit
      context.read<TeamsViewCubit>().fetchGroups();
    } else {
      print("User is not authenticated");
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return BlocBuilder<TeamsViewCubit, TeamsViewState>(
      builder: (context, state) {
        if (state is TeamsViewLoading) {
          return const CustomeContainer(
              widget: Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          ));
        } else if (state is TeamsViewSuccess) {
          final groups = state.groups;

          return CustomeContainer(
            widget: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            width: screenwidth * 0.60,
                            "assets/images/Logo Doptica f3.png",
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "New Team",
                        style: AppStyles.styleOpenSansRegular24,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kcreatteamview);

                            context.read<TeamsViewCubit>().fetchGroups();
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          )),
                      leading: Image.asset(
                        "assets/images/Google__G__logo.svg.png",
                        width: screenwidth * 0.10,
                        height: screenheight * 0.10,
                      ),
                    ),
                    SizedBox(height: screenheight * 0.01),
                    Expanded(
                      child: ListView.builder(
                        itemCount: groups.length,
                        itemBuilder: (BuildContext context, int index) {
                          final group = groups[index];

                          return Column(
                            children: [
                              SizedBox(height: screenheight * 0.008),
                              InkWell(
                                onTap: () {
                                  GoRouter.of(context)
                                      .push(AppRouter.knavitagationView);
                                },
                                child: ListTile(
                                  title: InkWell(
                                    onTap: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.knavitagationView);
                                    },
                                    child: Text(
                                      group['name'] ?? 'Unnamed Group',
                                      style: AppStyles.styleOpenSansRegular24,
                                    ),
                                  ),
                                  leading: group['photo_url'] != null
                                      ? Image.network(
                                          group['photo_url'],
                                          width: screenwidth * 0.15,
                                          height: screenheight * 0.15,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset(
                                          "assets/images/Google__G__logo.svg.png",
                                          width: screenwidth * 0.15,
                                          height: screenheight * 0.15,
                                        ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: 1,
                                width: screenwidth * 0.60,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.10,
                    ),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<TeamsViewCubit>(context).fetchGroups();
                      },
                      child: const Text(
                        "Refresh",
                        style: AppStyles.styleOpenSansBold16,
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.08,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (state is TeamsViewFailuer) {
          return CustomeContainer(
            widget: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            width: screenwidth * 0.60,
                            "assets/images/Logo Doptica f3.png",
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "New Team",
                        style: AppStyles.styleOpenSansRegular24,
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kcreatteamview);
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          )),
                      leading: Image.asset(
                        "assets/images/Google__G__logo.svg.png",
                        width: screenwidth * 0.10,
                        height: screenheight * 0.10,
                      ),
                    ),
                    SizedBox(height: screenheight * 0.30),
                    Center(
                      child: Text(
                        state.error,
                        style: AppStyles.styleOpenSansBold20,
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.10,
                    ),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<TeamsViewCubit>(context).fetchGroups();
                      },
                      child: const Text(
                        "Refresh",
                        style: AppStyles.styleOpenSansBold16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

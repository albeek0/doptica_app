import 'package:doptica_app/core/utils/app_router.dart';
import 'package:doptica_app/core/utils/app_style.dart';
import 'package:doptica_app/core/widgets/custome_container.dart';
import 'package:doptica_app/featurs/creat_taem_feature/cubit/add_new_team_cubit.dart';
import 'package:doptica_app/featurs/teams_view_faeture/cubit/teams_view_cubit.dart';
import 'package:doptica_app/featurs/teams_view_faeture/widgets/groubs_list_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TeamViewScreen extends StatelessWidget {
  const TeamViewScreen({super.key});

  // Get the current user ID from Supabase

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

          return BlocListener<TeamsViewCubit, TeamsViewState>(
            listener: (context, state) {
              if (state is GroubeDeleteSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Group deleted successfully!")),
                );
              } else if (state is GroubeDeleteFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text("Somthing Went Wrong , Try Again Later ")),
                );

                print(state.erorr);
              }
            },
            child: CustomeContainer(
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
                               context.read<AddNewTeamCubit>().resetImage();
                              GoRouter.of(context)
                                  .push(AppRouter.kcreatteamview);

                              context.read<TeamsViewCubit>().fetchGroups();
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 30,
                            )),
                        leading: Image.asset(
                          "assets/images/groube_def.png",
                          width: screenwidth * 0.10,
                          height: screenheight * 0.10,
                        ),
                      ),
                      SizedBox(height: screenheight * 0.03),
                      GroubsListBody(
                          groups: groups,
                          screenheight: screenheight,
                          screenwidth: screenwidth),
                      SizedBox(
                        height: screenheight * 0.10,
                      ),
                      InkWell(
                        onTap: () {
                          BlocProvider.of<TeamsViewCubit>(context)
                              .fetchGroups();
                        },
                        child: const Text(
                          "Refresh",
                          style: AppStyles.styleOpenSansBold16,
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.10,
                      )
                    ],
                  ),
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

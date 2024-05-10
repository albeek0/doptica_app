import 'package:doptica_app/featurs/edit_profile_feature.dart/edit_profile_view.dart';
import 'package:doptica_app/featurs/home_feature/home_view.dart';
import 'package:doptica_app/featurs/profile_feature/profile_view.dart';
import 'package:doptica_app/featurs/signup_and_signin.dart/sign_up.dart';
import 'package:doptica_app/featurs/tasks_featurs/tasks_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/TasksView';
  static const kEditProfileView = '/EditProfileView';
  static const kProfileView = '/ProfileView';
  static const kTasksView = '/HomeView';
   static const kSignUp = '/';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kEditProfileView,
        builder: (context, state) => const EditProfileView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kTasksView,
        builder: (context, state) => const TasksView(),
      ), GoRoute(
        path: kSignUp,
        builder: (context, state) => const SignUp(),
      ),
    ],
  );
}

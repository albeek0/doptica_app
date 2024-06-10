import 'package:doptica_app/featurs/Sign__in/sign_in.dart';
import 'package:doptica_app/featurs/edit_profile_feature.dart/edit_profile_view.dart';
import 'package:doptica_app/featurs/home_feature/home_view.dart';
import 'package:doptica_app/featurs/navigation.dart';
import 'package:doptica_app/featurs/posts_feature/posts_screen.dart';
import 'package:doptica_app/featurs/profile_feature/profile_view.dart';
import 'package:doptica_app/featurs/signup_and_signin.dart/sign_up.dart';
import 'package:doptica_app/featurs/signup_and_signin.dart/welcome.dart';
import 'package:doptica_app/featurs/signup_and_signin.dart/widgets/sign_up2.dart';
import 'package:doptica_app/featurs/tasks_featurs/tasks_view.dart';

import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // static const kNavigationView = '/';
  static const kHomeView = '/HomeView';
  static const kEditProfileView = '/EditProfileView';
  static const kProfileView = '/ProfileView';
  static const kTasksView = '/TasksView';
  static const kwelcome = '/welcome';
  static const ksignup = '/signup';
  static const ksignup2 = '/signup2';
  static const knavitagationView = '/';
  static const kSignIn = '/SignIn';
  static const kPostsScreen = '/PostsScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: knavitagationView,
        builder: (context, state) => const NavitagationView(),
      ),
      // GoRoute(
      //   path: kNavigationView,
      //   builder: (context, state) => const Custom_Navigation_View(),
      // ),
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
      ),
      GoRoute(
        path: kwelcome,
        builder: (context, state) => const Welcome(),
      ),
      GoRoute(
        path: ksignup,
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: kSignIn,
        builder: (context, state) => const SignIn(),
      ),
      GoRoute(
        path: ksignup2,
        builder: (context, state) => const SignUp2(),
      ),
      GoRoute(
        path: kPostsScreen,
        builder: (context, state) => const PostsScreen(),
      ),
    ],
  );
}

import 'package:dicogram/view/auth/login/login_page.dart';
import 'package:dicogram/view/auth/register/register_page.dart';
import 'package:dicogram/view/home/list_story_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/list-story',
      builder: (context, state) => const ListStoryPage(),
    ),
  ],
);

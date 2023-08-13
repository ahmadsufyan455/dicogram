import 'package:dicogram/presentation/pages/auth/login/login_page.dart';
import 'package:dicogram/presentation/pages/auth/register/register_page.dart';
import 'package:dicogram/presentation/pages/home/list_story_page.dart';
import 'package:dicogram/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('MyTest didPush: $route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('MyTest didPop: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('MyTest didRemove: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint('MyTest didReplace: $newRoute');
  }
}

final router = GoRouter(
  observers: [GoRouterObserver()],
  routes: [
    GoRoute(
      path: '/',
      name: 'splash-screen',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginPage(),
      routes: [
        GoRoute(
          path: 'register',
          name: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/list-story',
      name: 'list-story',
      builder: (context, state) => const ListStoryPage(),
    ),
  ],
);

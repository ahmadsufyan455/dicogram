import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dicogram/presentation/pages/add/add_story_page.dart';
import 'package:dicogram/presentation/pages/add/camera_page.dart';
import 'package:dicogram/presentation/pages/auth/login/login_page.dart';
import 'package:dicogram/presentation/pages/auth/register/register_page.dart';
import 'package:dicogram/presentation/pages/detail/detail_page.dart';
import 'package:dicogram/presentation/pages/home/list_story_page.dart';
import 'package:dicogram/presentation/pages/location/location_page.dart';
import 'package:dicogram/presentation/pages/profile/profile_page.dart';
import 'package:dicogram/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
part 'router_v2.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class RouterV2 extends _$RouterV2 {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: ListStoryRoute.page),
        AutoRoute(page: DetailRoute.page),
        AutoRoute(page: AddStoryRoute.page),
        AutoRoute(page: CameraRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: LocationRoute.page),
      ];
}

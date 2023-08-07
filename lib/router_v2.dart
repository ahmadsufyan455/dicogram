import 'package:auto_route/auto_route.dart';
import 'package:dicogram/view/auth/login/login_page.dart';
import 'package:dicogram/view/auth/register/register_page.dart';
import 'package:dicogram/view/home/list_story_page.dart';
import 'package:dicogram/view/splash_page.dart';
part 'router_v2.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class RouterV2 extends _$RouterV2 {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: ListStoryRoute.page),
      ];
}

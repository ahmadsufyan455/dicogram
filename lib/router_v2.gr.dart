// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router_v2.dart';

abstract class _$RouterV2 extends RootStackRouter {
  // ignore: unused_element
  _$RouterV2({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddStoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddStoryPage(),
      );
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return AutoRoutePage<XFile>(
        routeData: routeData,
        child: CameraPage(
          key: args.key,
          cameras: args.cameras,
        ),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ListStoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ListStoryPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [AddStoryPage]
class AddStoryRoute extends PageRouteInfo<void> {
  const AddStoryRoute({List<PageRouteInfo>? children})
      : super(
          AddStoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddStoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CameraPage]
class CameraRoute extends PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    Key? key,
    required List<CameraDescription> cameras,
    List<PageRouteInfo>? children,
  }) : super(
          CameraRoute.name,
          args: CameraRouteArgs(
            key: key,
            cameras: cameras,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const PageInfo<CameraRouteArgs> page = PageInfo<CameraRouteArgs>(name);
}

class CameraRouteArgs {
  const CameraRouteArgs({
    this.key,
    required this.cameras,
  });

  final Key? key;

  final List<CameraDescription> cameras;

  @override
  String toString() {
    return 'CameraRouteArgs{key: $key, cameras: $cameras}';
  }
}

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const PageInfo<DetailRouteArgs> page = PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [ListStoryPage]
class ListStoryRoute extends PageRouteInfo<void> {
  const ListStoryRoute({List<PageRouteInfo>? children})
      : super(
          ListStoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListStoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

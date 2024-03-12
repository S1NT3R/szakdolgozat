// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:chore_champion/src/ui/pages/auth/login_page.dart' as _i9;
import 'package:chore_champion/src/ui/pages/auth/register_page.dart' as _i14;
import 'package:chore_champion/src/ui/pages/cleaning/cleaning_page.dart' as _i2;
import 'package:chore_champion/src/ui/pages/cleaning/cleaning_router_page.dart'
    as _i3;
import 'package:chore_champion/src/ui/pages/home/home_page.dart' as _i4;
import 'package:chore_champion/src/ui/pages/home/home_router_page.dart' as _i5;
import 'package:chore_champion/src/ui/pages/laundry/add_clothes_page.dart'
    as _i1;
import 'package:chore_champion/src/ui/pages/laundry/laundry_page.dart' as _i7;
import 'package:chore_champion/src/ui/pages/laundry/laundry_router_page.dart'
    as _i8;
import 'package:chore_champion/src/ui/pages/main_page.dart' as _i10;
import 'package:chore_champion/src/ui/pages/no_internet_page.dart' as _i11;
import 'package:chore_champion/src/ui/pages/profile/info_page.dart' as _i6;
import 'package:chore_champion/src/ui/pages/profile/profile_page.dart' as _i12;
import 'package:chore_champion/src/ui/pages/profile/profile_router_page.dart'
    as _i13;
import 'package:chore_champion/src/ui/pages/splash/splash_page.dart' as _i15;
import 'package:chore_champion/src/ui/pages/todo/todo_list_page.dart' as _i16;
import 'package:chore_champion/src/ui/pages/todo/todo_router_page.dart' as _i17;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AddClothesRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddClothesPage(),
      );
    },
    CleaningRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CleaningPage(),
      );
    },
    CleaningRouterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CleaningRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    HomeRouterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeRouterPage(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.InfoPage(),
      );
    },
    LaundryRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LaundryPage(),
      );
    },
    LaundryRouterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LaundryRouterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MainPage(),
      );
    },
    NoInternetRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NoInternetPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    ProfileRouterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfileRouterPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RegisterPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashPage(),
      );
    },
    TodoListRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.TodoListPage(),
      );
    },
    TodoRouterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.TodoRouterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddClothesPage]
class AddClothesRoute extends _i18.PageRouteInfo<void> {
  const AddClothesRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AddClothesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddClothesRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CleaningPage]
class CleaningRoute extends _i18.PageRouteInfo<void> {
  const CleaningRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CleaningRoute.name,
          initialChildren: children,
        );

  static const String name = 'CleaningRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CleaningRouterPage]
class CleaningRouterRoute extends _i18.PageRouteInfo<void> {
  const CleaningRouterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CleaningRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CleaningRouterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeRouterPage]
class HomeRouterRoute extends _i18.PageRouteInfo<void> {
  const HomeRouterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.InfoPage]
class InfoRoute extends _i18.PageRouteInfo<void> {
  const InfoRoute({List<_i18.PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LaundryPage]
class LaundryRoute extends _i18.PageRouteInfo<void> {
  const LaundryRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LaundryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LaundryRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LaundryRouterPage]
class LaundryRouterRoute extends _i18.PageRouteInfo<void> {
  const LaundryRouterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LaundryRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'LaundryRouterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MainPage]
class MainRoute extends _i18.PageRouteInfo<void> {
  const MainRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NoInternetPage]
class NoInternetRoute extends _i18.PageRouteInfo<void> {
  const NoInternetRoute({List<_i18.PageRouteInfo>? children})
      : super(
          NoInternetRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoInternetRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProfileRouterPage]
class ProfileRouterRoute extends _i18.PageRouteInfo<void> {
  const ProfileRouterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRouterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RegisterPage]
class RegisterRoute extends _i18.PageRouteInfo<void> {
  const RegisterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TodoListPage]
class TodoListRoute extends _i18.PageRouteInfo<void> {
  const TodoListRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TodoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoListRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TodoRouterPage]
class TodoRouterRoute extends _i18.PageRouteInfo<void> {
  const TodoRouterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TodoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoRouterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

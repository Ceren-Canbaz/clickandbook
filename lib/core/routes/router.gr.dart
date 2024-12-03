// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:clickandbook/core/navbar/app_navigation_bar.dart' as _i3;
import 'package:clickandbook/features/auth/presentation/auth_screen.dart'
    as _i1;
import 'package:clickandbook/features/home/presentation/home_screen.dart'
    as _i2;

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.NavigationBarScreen]
class NavigationBarRoute extends _i4.PageRouteInfo<void> {
  const NavigationBarRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationBarRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.NavigationBarScreen();
    },
  );
}

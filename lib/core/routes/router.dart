import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/dashboard/dashboard.dart';

import 'package:clickandbook/core/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: PageInfo(
            "dashboard",
            builder: (data) {
              return const DashboardPage();
            },
          ),
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(
              page: ExploreRoute.page,
            ),
            AutoRoute(
              page: AuthRoute.page,
            ),
          ],
          initial: true,
        ),
      ];
}

import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/constants/svg_paths.dart';
import 'package:clickandbook/core/style/widgets/navbar_item.dart';
import 'package:clickandbook/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      transitionBuilder: (_, child, __) => child, //remove animation
      bottomNavigationBuilder: (_, tabsRouter) {
        return Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                activeIcon: NavBarIcon(
                  svgPath: SvgPaths.vectorPattern,
                  isActive: true,
                ),
                icon: NavBarIcon(
                    svgPath: SvgPaths.vectorPattern, isActive: false),
              ),
              BottomNavigationBarItem(
                label: 'Explore',
                activeIcon: NavBarIcon(svgPath: SvgPaths.map, isActive: true),
                icon: NavBarIcon(svgPath: SvgPaths.map, isActive: false),
              ),
              BottomNavigationBarItem(
                label: 'Auth',
                activeIcon:
                    NavBarIcon(svgPath: SvgPaths.security, isActive: true),
                icon: NavBarIcon(svgPath: SvgPaths.security, isActive: false),
              )
            ],
          ),
        );
      },
    );
  }
}

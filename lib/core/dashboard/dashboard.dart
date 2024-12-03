import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/constants/svg_paths.dart';
import 'package:clickandbook/core/style/widgets/navbar_item.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      transitionBuilder: (_, child, __) => child, //remove animation
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: NavBarIcon(
                svgPath: SvgPaths.vectorPattern,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Auth',
              icon: NavBarIcon(
                svgPath: SvgPaths.vectorPattern,
              ),
            )
          ],
        );
      },
    );
  }
}

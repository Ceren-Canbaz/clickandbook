import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/routes/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  NavigationBarScreenState createState() => NavigationBarScreenState();
}

class NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.replaceRoute(
          const HomeRoute(),
        );

        break;
      case 1:
        context.replaceRoute(
          const AuthRoute(),
        );
        break;
      default:
        context.replaceRoute(
          const HomeRoute(),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Auth',
          ),
        ],
      ),
    );
  }
}

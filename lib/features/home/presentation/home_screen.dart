import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/routes/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const AuthRoute());
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/routes/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auth"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const HomeRoute());
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/features/home/presentation/widgets/banner.dart';
import 'package:clickandbook/features/home/presentation/widgets/category_section.dart';
import 'package:clickandbook/features/home/presentation/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeBanner(),
                SizedBox(height: 12),
                CategorySection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/constants/svg_paths.dart';
import 'package:clickandbook/core/theme/light_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Click&Book",
            ),
            Opacity(
              opacity: 0.8,
              child: SvgPicture.asset(
                SvgPaths.vectorPattern,
                height: 32,
                // colorFilter: const ColorFilter.mode(
                //   secondaryColor,
                //   BlendMode.srcIn,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

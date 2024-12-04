import 'package:clickandbook/core/constants/svg_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 72,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Click&Book",
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            Opacity(
              opacity: 0.8,
              child: SvgPicture.asset(
                SvgPaths.vectorPattern,
                height: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

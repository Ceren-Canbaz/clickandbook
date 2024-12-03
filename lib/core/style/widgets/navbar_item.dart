import 'package:clickandbook/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.svgPath,
  });
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      height: 24,
      colorFilter: const ColorFilter.mode(
        primaryColor,
        BlendMode.srcIn,
      ),
    );
  }
}

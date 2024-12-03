import 'package:clickandbook/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.svgPath,
    required this.isActive,
  });
  final String svgPath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      height: isActive ? 36 : 32,
      colorFilter: ColorFilter.mode(
        isActive ? secondaryColor : accentColor3,
        BlendMode.srcIn,
      ),
    );
  }
}

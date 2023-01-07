library iconoir;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;

import 'src/icons.dart';

export 'src/icons.dart';

class Iconoir extends StatelessWidget {
  const Iconoir(
    this.icon, {
    this.color,
    this.size,
  });

  final IconoirIcons icon;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final path = p.join(
      'packages/iconoir/assets/',
      icon.name,
    );
    return SvgPicture.asset(
      '$path.svg',
      color: color ?? IconTheme.of(context).color,
      width: size ?? IconTheme.of(context).size,
      height: size ?? IconTheme.of(context).size,
      alignment: Alignment.center,
    );
  }
}

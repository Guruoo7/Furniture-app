import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class customizeSuffixIcon extends StatelessWidget {
  const customizeSuffixIcon({
    Key? key,
    required this.svgIcons,
  }) : super(key: key);

  final String svgIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getproportionateScreenHeight(23),
        getproportionateScreenHeight(22),
        getproportionateScreenHeight(22),
      ),
      child: SvgPicture.asset(
        svgIcons,
        height: getproportionateScreenHeight(19),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class ScrollCard extends StatelessWidget {
  const ScrollCard({
    Key? key,
    required this.images,
    this.press,
  }) : super(key: key);
  final String images;
  final press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getproportionateScreenWidth(10)),
        padding: EdgeInsets.all(getproportionateScreenWidth(10)),
        height: getproportionateScreenHeight(40),
        width: getproportionateScreenWidth(40),
        decoration:
            BoxDecoration(color: Color(0xFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(images),
      ),
    );
  }
}

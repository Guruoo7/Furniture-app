// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class splashContent extends StatelessWidget {
  const splashContent({
    Key? key,
    required this.images,
    required this.text,
  }) : super(key: key);
  final String text, images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Furniture",
          style: TextStyle(
            fontSize: getproportionateScreenWidth(36),
            color: KprimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          images,
        ),
      ],
    );
  }
}

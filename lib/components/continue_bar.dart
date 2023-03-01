// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ContinueBar extends StatelessWidget {
  const ContinueBar({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getproportionateScreenHeight(55),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: KprimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            text,
            style: TextStyle(
              fontSize: getproportionateScreenWidth(19),
            ),
          ),
        ),
      ),
    );
  }
}

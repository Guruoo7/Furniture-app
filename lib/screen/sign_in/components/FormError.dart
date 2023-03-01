// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => FormErrorTest(error: errors[index]),
      ),
    );
  }

  Row FormErrorTest({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getproportionateScreenHeight(14),
          width: getproportionateScreenHeight(14),
        ),
        SizedBox(
          width: getproportionateScreenWidth(20),
        ),
        Text(
          error,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

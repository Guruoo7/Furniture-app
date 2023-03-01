// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/size_config.dart';

import 'CompleteProfile_Form.dart';

class IP_Body extends StatelessWidget {
  const IP_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getproportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(height: getproportionateScreenHeight(25)),
              Text(
                "Complete Profile",
                style: HeadLine1,
              ),
              Text(
                'Complete your details or continue \n with social media',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              CompleteProfile(),
            ],
          ),
        ),
      ),
    );
  }
}

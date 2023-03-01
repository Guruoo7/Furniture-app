// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture/screen/Initial_profile/components/Initial_profile_body.dart';

class Initial_profile_Screen extends StatelessWidget {
  static String routeName = '/initial_profile';
  const Initial_profile_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "Sign Up \t\t\t\t\t\t\t\t\t",
          style: TextStyle(color: Colors.black),
        ),
      )),
      body: IP_Body(),
    );
  }
}

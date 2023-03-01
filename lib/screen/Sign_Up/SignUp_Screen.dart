// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Components/SignUp_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/Sign_Up';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sign Up \t\t\t\t\t\t\t\t\t",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SignUpBody(),
    );
  }
}

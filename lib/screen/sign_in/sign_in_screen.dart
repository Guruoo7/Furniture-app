// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/Sign_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/Sign_in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sign In\t\t\t\t\t\t\t\t\t\t",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: body(),
    );
  }
}

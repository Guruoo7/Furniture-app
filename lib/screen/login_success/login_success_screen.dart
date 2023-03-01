// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture/screen/login_success/components/Login_success_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/Login_success';
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Login success  ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: LoginSuccess_Body(),
    );
  }
}

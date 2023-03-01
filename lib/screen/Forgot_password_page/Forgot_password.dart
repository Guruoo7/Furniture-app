// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture/screen/Forgot_password_page/Components/ForgotPasword_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forget_password';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Forgot password\t\t\t\t\t\t',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: FP_Body(),
    );
  }
}

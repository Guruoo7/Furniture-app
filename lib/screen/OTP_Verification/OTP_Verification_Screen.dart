// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:furniture/screen/OTP_Verification/Components/OTP_Body.dart';

class OTP_verification_Screen extends StatelessWidget {
  static String routeName = '/OTP_verification';
  const OTP_verification_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          'OTP Verification\t\t\t\t\t\t\t',
          style: TextStyle(color: Colors.black),
        ),
      )),
      body: OtpBody(),
    );
  }
}

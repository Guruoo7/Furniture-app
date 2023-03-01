// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture/components/continue_bar.dart';
import 'package:furniture/screen/HomeScreen/Homepage.dart';
import 'package:furniture/size_config.dart';

class LoginSuccess_Body extends StatelessWidget {
  const LoginSuccess_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.17,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getproportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.5,
          child: ContinueBar(
            text: "Back To Home",
            press: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}

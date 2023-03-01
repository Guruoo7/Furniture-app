// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:furniture/size_config.dart';

import 'NoAccount_page.dart';
import 'Scroll_card.dart';
import 'Sign_in_form.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getproportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Color.fromRGBO(10, 137, 192, 1),
                    fontSize: getproportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \n continue with social media",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScrollCard(
                      images: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    ScrollCard(
                      images: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    ScrollCard(
                      images: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getproportionateScreenHeight(20),
                ),
                NoAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

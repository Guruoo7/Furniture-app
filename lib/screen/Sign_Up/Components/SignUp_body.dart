// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/size_config.dart';

import '../../sign_in/components/Scroll_card.dart';
import 'SignUp_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getproportionateScreenWidth(16)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text("Register Account", style: HeadLine1),
              Text(
                "Complete your details or continue \nwith social media",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
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
              SizedBox(height: getproportionateScreenHeight(30)),
              Text(
                'By continuing your confirm that you agree \n with our Terms and Condition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

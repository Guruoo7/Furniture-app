// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/screen/HomeScreen/Homepage.dart';
import 'package:furniture/screen/OTP_Verification/OTP_Verification_Screen.dart';
import 'package:furniture/screen/Welcome/components/splash_content.dart';
import 'package:furniture/screen/sign_in/sign_in_screen.dart';

import 'package:furniture/size_config.dart';

import '../../../components/continue_bar.dart';

class Body extends StatefulWidget {
  // Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List splashSlide = [
    {
      "text": "Welcome to ______,Let's purchase",
      "images": "assets/images/splash_1.png",
    },
    {
      "text": 'We help people connect with store\n around TamilNadu of India ',
      "images": "assets/images/splash_2.png",
    },
    {
      "text":
          "We show the easy way to shop.\nJust stay at home and vist our store",
      "images": "assets/images/splash_3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashSlide.length,
                    itemBuilder: ((context, index) => splashContent(
                          text: splashSlide[index]["text"],
                          images: splashSlide[index]["images"],
                        ))),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getproportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashSlide.length,
                        (index) => changerDot(index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    ContinueBar(
                      text: "continue",
                      press: () {
                        // Navigator.pushNamed(context, SignInScreen.routeName);
                        // Navigator.pushNamed(
                        //     context, OTP_verification_Screen.routeName);
                        Navigator.pushNamed(context, Home.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer changerDot(int index) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: EdgeInsets.only(right: 8),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? KprimaryLightColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

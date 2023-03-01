// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:furniture/screen/DetailsPage/detailsScreen.dart';
import 'package:furniture/screen/Forgot_password_page/Forgot_password.dart';
import 'package:furniture/screen/HomeScreen/Homepage.dart';
import 'package:furniture/screen/Initial_profile/Initial_profile_screen.dart';
import 'package:furniture/screen/OTP_Verification/OTP_Verification_Screen.dart';
import 'package:furniture/screen/Sign_Up/SignUp_Screen.dart';
import 'package:furniture/screen/Welcome/splash_screen.dart';
import 'package:furniture/screen/login_success/login_success_screen.dart';
import 'package:furniture/screen/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  splashScreen.routeName: ((context) => splashScreen()),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  Initial_profile_Screen.routeName: (context) => Initial_profile_Screen(),
  OTP_verification_Screen.routeName: (context) => OTP_verification_Screen(),
  Home.routeName: (context) => Home(),
  productDetail.routeName: (context) => productDetail(),
};

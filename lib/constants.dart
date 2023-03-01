// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture/size_config.dart';

const KprimaryColor = Colors.blue;
const KprimaryLightColor = Colors.lightBlue;
const KprimaryGradiantColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromRGBO(209, 107, 165, 0),
      Color.fromRGBO(134, 168, 231, 0),
      Color.fromRGBO(95, 251, 251, 0)
    ]);
const KsecondaryColor = Color.fromRGBO(151, 151, 151, 1);
const KTextColor = Color(0xFF757575);

const KAnimationDuration = Duration(milliseconds: 175);

final HeadLine1 = TextStyle(
  color: Colors.lightBlue,
  fontSize: getproportionateScreenWidth(25),
  fontWeight: FontWeight.bold,
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecorration = InputDecoration(
  enabledBorder: OutLineInputborder(),
  focusedBorder: OutLineInputborder(),
  contentPadding:
      EdgeInsets.symmetric(vertical: getproportionateScreenHeight(5)),
);

OutlineInputBorder OutLineInputborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(color: KTextColor));
}

// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    fontFamily: "Muli",
    textTheme: Text_theme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: KTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 15,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}

TextTheme Text_theme() {
  return TextTheme(
      bodyText1: TextStyle(color: KTextColor),
      bodyText2: TextStyle(color: KTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    foregroundColor: Color(0xFF76767C),
  );
}

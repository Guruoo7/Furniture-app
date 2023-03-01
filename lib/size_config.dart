import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = _mediaQueryData;
  static double screenWidth = screenWidth;
  static double screenHeight = screenHeight;
  static double defaultSize = defaultSize;
  static Orientation orientation = orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getproportionateScreenHeight(double inputheight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputheight / 812.0) * screenHeight;
}

double getproportionateScreenWidth(double inputwidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputwidth / 375.0) * screenWidth;
}

import 'package:flutter/material.dart';
import 'package:furniture/screen/Welcome/components/body.dart';
import 'package:furniture/size_config.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:furniture/screen/HomeScreen/components/HP_body.dart';

class Home extends StatelessWidget {
  static String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HpBody());
  }
}

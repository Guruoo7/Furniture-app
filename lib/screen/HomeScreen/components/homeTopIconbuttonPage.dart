import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class searchIcon extends StatelessWidget {
  const searchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      height: 60,
      decoration: BoxDecoration(
          color: const Color(0xFFF1EDED),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'search',
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (value) {},
      ),
    );
  }
}

class homeTopIconbutton extends StatelessWidget {
  const homeTopIconbutton({
    Key? key,
    required this.image,
    required this.numofItem,
    required this.press,
  }) : super(key: key);
  final String image;
  final int numofItem;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(70),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: getproportionateScreenHeight(55),
        width: getproportionateScreenWidth(55),
        decoration: BoxDecoration(
          color: const Color(0xFFF1EDED),
          borderRadius: BorderRadius.circular(25),
        ),
        child: SvgPicture.asset(
          image,
          color: Color.fromRGBO(99, 82, 255, 1),
        ),
      ),
    );
  }
}

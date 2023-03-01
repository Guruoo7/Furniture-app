import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class autoScroll extends StatelessWidget {
  List imageList = [
    'assets/images/Image Banner 2.png',
    'assets/images/tshirt.png',
    'assets/images/shoes2.png',
    'assets/images/splash_2.png',
    'assets/images/splash_3.png',
    'assets/images/splash_1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getproportionateScreenHeight(0)),
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: getproportionateScreenHeight(140),
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white10,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageList[i],
                  // width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              // var url = imageList[i];
              // print(url.toString());
            },
          );
        },
      ),
    );
  }
}

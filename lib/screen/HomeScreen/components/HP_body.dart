// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_cast, recursive_getters

import 'package:flutter/material.dart';
import 'package:furniture/Models/Product.dart';
import 'package:furniture/screen/DetailsPage/detailsScreen.dart';

import 'package:furniture/screen/HomeScreen/components/Category.dart';
import 'package:furniture/screen/HomeScreen/components/homeTopIconbuttonPage.dart';
import 'package:furniture/screen/HomeScreen/components/product_card.dart';
import 'package:furniture/size_config.dart';

import 'autoScroll.dart';

class HpBody extends StatelessWidget {
  const HpBody({Key? key}) : super(key: key);

  BuildContext get context => context;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getproportionateScreenWidth(8),
              vertical: getproportionateScreenHeight(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchIcon(),
                  homeTopIconbutton(
                      image: 'assets/icons/Bell.svg',
                      numofItem: 0,
                      press: () {}),
                  homeTopIconbutton(
                    image: 'assets/icons/Cart Icon.svg',
                    numofItem: 0,
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getproportionateScreenHeight(55),
              ),
              categoryWidget(),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              autoScroll(),
              PopularProduct()
            ],
          ),
        ),
      ),
    );
  }

  Column PopularProduct() {
    return Column(
      children: [
        SizedBox(
          height: getproportionateScreenHeight(85),
        ),
        Row(
          children: [
            Text(
              'Popular Product',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getproportionateScreenHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return popular_product(
                    product: demoProducts[index],
                    press: () =>
                        Navigator.pushNamed(context, productDetail.routeName),
                  );
                }
                return SizedBox.shrink();
              })
            ],
          ),
        ),
      ],
    );
  }
}

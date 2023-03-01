// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:furniture/screen/DetailsPage/detailsScreen.dart';

import '../../../Models/Product.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class popular_product extends StatelessWidget {
  const popular_product({
    Key? key,
    this.width = 140,
    required this.product,
    this.aspectRatio = 1.03,
    required this.press,
  }) : super(key: key);

  final double aspectRatio, width;
  final Product product;
  final InkWell press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 20, 5),
      child: Column(
        children: [
          InkWell(
            onTap: () => press,
            child: SizedBox(
              width: getproportionateScreenWidth(140),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: aspectRatio,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(product.images[0]),
                    ),
                  ),
                  Text(
                    product.productName,
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₹ ${product.prices}',
                        style: TextStyle(
                          color: KprimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: getproportionateScreenWidth(35),
                          height: getproportionateScreenHeight(35),
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.1),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(11)),
                          child: Icon(
                            Icons.favorite,
                            color: product.isFavorite
                                ? Colors.red
                                : Colors.transparent.withOpacity(0.2),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

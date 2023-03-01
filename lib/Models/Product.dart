import 'package:flutter/material.dart';

class Product {
  late final String productName, description;
  late final List<String> images;
  late final List<Color> colors;
  late final bool isFavorite, isPopular;
  late final double rating, prices;
  Product({
    required this.description,
    required this.productName,
    required this.images,
    required this.colors,
    required this.isPopular,
    required this.prices,
    required this.isFavorite,
    required this.rating,
  });
}

List<Product> demoProducts = [
  Product(
    images: [
      // 'assets/images/google-pay.png'
      // "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productName: "Wireless Controller for PS4™",
    prices: 64.99,
    description: description,
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productName: "Nike Sport White - Man Pant",
    prices: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
    isFavorite: false,
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productName: "Gloves XC Omega - Polygon",
    prices: 36.55,
    description: description,
    rating: 4.1,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
      images: [
        "assets/images/wireless headset.png",
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      productName: "Logitech Head",
      prices: 20.20,
      description: description,
      rating: 4.1,
      isFavorite: true,
      isPopular: false),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

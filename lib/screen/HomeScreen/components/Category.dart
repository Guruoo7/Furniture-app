import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class categoryWidget extends StatelessWidget {
  const categoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> Category = [
      {'icon': 'assets/icons/Flash Icon.svg', 'text': 'Trending'},
      {'icon': 'assets/icons/Bill Icon.svg', 'text': 'bill'},
      {'icon': 'assets/icons/Game Icon.svg', 'text': 'Games'},
      {'icon': 'assets/icons/Gift Icon.svg', 'text': 'Gifts'},
      {'icon': 'assets/icons/Discover.svg', 'text': 'Discover'}
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            Category.length,
            (index) => CategoryCard(
                icon: Category[index]['icon'],
                // press: () {},
                text: Category[index]['text']))
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    // this.press,
    required this.text,
  }) : super(key: key);

  final String text, icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: getproportionateScreenWidth(getproportionateScreenWidth(50)),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getproportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(189, 224, 240, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  icon,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

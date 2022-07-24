import 'package:flutter/material.dart';
import 'package:foodzy/constants.dart';

class DeliciousFoods extends StatelessWidget {
  const DeliciousFoods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DeliciousFoodsCard(
            image: "assets/images/NO.png",
            press: () {},
          ),
          DeliciousFoodsCard(
            image: "assets/images/pas.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DeliciousFoodsCard extends StatelessWidget {
  const DeliciousFoodsCard({Key? key, required this.image, required this.press})
      : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}

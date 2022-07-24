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
            image: "assets/images/Domino.png",
            press: () {},
          ),
          DeliciousFoodsCard(
            image: "assets/images/la.png",
            press: () {},
          ),
          DeliciousFoodsCard(
            image: "assets/images/download.png",
            press: () {},
          ),
          DeliciousFoodsCard(
            image: "assets/images/download (1).png",
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
            top: kDefaultPadding ,
            bottom: kDefaultPadding ),
        width: size.width * 0.38,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}

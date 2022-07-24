import 'package:flutter/material.dart';


import '../../../constants.dart';
class RecomendsFood extends StatelessWidget {
  const RecomendsFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedFoodCard(
            image: 'assets/images/pz.png',
            price: 149,
            country: 'Italian',
            title: 'Pizza',
            press: () {}
          ),
          RecomendedFoodCard(
            image: 'assets/images/ch.png',
            price: 89,
            country: 'Indian',
            title: 'poori chole',
            press: () {},
          ),
          RecomendedFoodCard(
            image: 'assets/images/bug2.png',
            price: 99,
            country: 'Hamburg',
            title: 'Burger',
            press: () {},
          ),
          RecomendedFoodCard(
            image: 'assets/images/Screenshot 2022-08-20 at 2.21.22 PM.png',
            price: 59,
            country: 'Algeria',
            title: 'Cold Coffee',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendedFoodCard extends StatelessWidget {
  const RecomendedFoodCard({
    Key? key,
    required this.image,
    required this.country,
    required this.title,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, country, title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 3,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.35,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.3)),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "₹$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

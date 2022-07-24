// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:foodzy/screens/home/components/recomends_food.dart';
import 'package:foodzy/screens/home/components/titel_with_more_btn.dart';
import '../../../constants.dart';

import 'delicious_foods.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendsFood(),
          TitleWithMoreBtn(title: 'Delicious Foods', press: () {}),
          DeliciousFoods(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}


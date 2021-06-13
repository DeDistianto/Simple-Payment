import 'package:flutter/material.dart';
import 'recommendation.dart';

class ScrollRecommend extends StatelessWidget {
  const ScrollRecommend({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedCard(
            image: "assets/sample/example_banner.png",
            press: () {},
          ),
          RecommendedCard(
            image: "assets/sample/example_banner.png",
            press: () {},
          ),
          RecommendedCard(
            image: "assets/sample/example_banner.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

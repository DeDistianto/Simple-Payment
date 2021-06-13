import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 5,
      ),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class HeadingTitles extends StatelessWidget {
  const HeadingTitles({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 15,
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 15),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

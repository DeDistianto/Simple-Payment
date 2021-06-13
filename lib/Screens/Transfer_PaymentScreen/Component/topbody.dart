import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class TopofBody extends StatelessWidget {
  const TopofBody({
    Key key,
    this.titles,
    this.text,
  }) : super(key: key);

  final String titles;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.25 - 27,
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
                  titles.toUpperCase(),
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 25,
                      color: Colors.black.withOpacity(0.23)),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: text.toUpperCase(),
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

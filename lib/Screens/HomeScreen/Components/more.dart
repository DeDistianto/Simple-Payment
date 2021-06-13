import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/HomeScreen/Components/recomended.dart';
import 'package:simplepayment/constants.dart';

class MoreBtn extends StatelessWidget {
  const MoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          LastHeader(
            text: title,
          ),
          Spacer(),
          TextButton(
            child: Text(
              "More".toUpperCase(),
            ),
            style: TextButton.styleFrom(
              primary: kPrimaryLightColor,
              backgroundColor: kPrimaryColor,
              textStyle: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: press,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class TFButtons extends StatelessWidget {
  const TFButtons({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
  }) : super(key: key);

  final String text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 15),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 100, vertical: 18),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

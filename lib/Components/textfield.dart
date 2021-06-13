import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class TextFields extends StatelessWidget {
  final Widget child;
  const TextFields({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(29),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class BackgroundSign extends StatelessWidget {
  final Widget child;
  const BackgroundSign({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: -125,
              child: Image.asset(
                'assets/images/blue_bg.png',
                width: size.width * 1,
              )),
          Positioned(
              top: 0,
              child: Image.asset('assets/images/simplepayment_logo.png',
                  width: size.width * 0.225)),
          Positioned(
            top: 75,
            child: Text(
              "REGISTRATION",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFFAFAFA)),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

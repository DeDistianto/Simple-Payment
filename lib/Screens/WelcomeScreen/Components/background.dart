import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
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
                bottom: 0,
                child: Image.asset(
                  'assets/images/white_bg.png',
                  width: size.width * 1,
                )),
            Positioned(
                top: 0,
                child: Image.asset('assets/images/simplepayment_logo.png',
                    width: size.width * 0.9)),
            Positioned(
                right: 225,
                bottom: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "login".toUpperCase(),
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(30)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue[900]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue))),
                  ),
                )),
            Positioned(
                left: 225,
                bottom: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up".toUpperCase(),
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(30)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black))),
                  ),
                ))
          ],
        ));
  }
}

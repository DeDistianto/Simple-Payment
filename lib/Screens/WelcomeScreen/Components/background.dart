import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/LoginScreen/Login.dart';
import 'package:simplepayment/Screens/SignUpScreen/signup.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({
    Key key,
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
              top: 0, child: Image.asset('assets/images/blue_full_bg.png')),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/white_bg.png',
              width: size.width * 1,
            ),
          ),
          Positioned(
              top: 0,
              child: Image.asset('assets/images/simplepayment_logo.png',
                  width: size.width * 0.9)),
          Positioned(
            right: 220,
            bottom: 100,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Text(
                "login".toUpperCase(),
                style: TextStyle(fontSize: 16),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue[900]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue))),
              ),
            ),
          ),
          Positioned(
            left: 220,
            bottom: 100,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Sign Up".toUpperCase(),
                style: TextStyle(fontSize: 16),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

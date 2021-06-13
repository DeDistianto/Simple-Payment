import 'package:flutter/material.dart';
import 'package:simplepayment/Components/checkininfo.dart';
import 'package:simplepayment/Screens/HomeScreen/home.dart';
import 'package:simplepayment/Screens/LoginScreen/Components/fieldcontainer.dart';
import 'package:simplepayment/Screens/SignUpScreen/signup.dart';
import 'package:simplepayment/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/blue_bg.png',
                  width: size.width * 1,
                )),
            Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/simplepayment_logo.png',
                  width: size.width * 0.5,
                )),
            Positioned(
              top: 180,
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFFAFAFA)),
              ),
            ),
            Positioned(
              top: 250,
              child: TextFieldContainer(
                  child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    hintText: "Email/Username/Phone"),
              )),
            ),
            Positioned(
                top: 325,
                child: TextFieldContainer(
                  child: TextField(
                      obscureText: true,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                        hintText: "Password",
                        suffixIcon:
                            Icon(Icons.visibility, color: kPrimaryColor),
                        border: InputBorder.none,
                      )),
                )),
            Positioned(
                top: 420,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
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
                      EdgeInsets.symmetric(horizontal: 100, vertical: 18),
                    ),
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
              top: 500,
              child: AccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simplepayment/Components/passfield.dart';
import 'package:simplepayment/Screens/SignUpScreen/Components/background.dart';
import 'package:simplepayment/Components/roundedfield.dart';
import 'package:simplepayment/Screens/HomeScreen/home.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundSign(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RoundedField(
            hintText: "First Name",
          ),
          RoundedField(
            hintText: "Last Name",
          ),
          RoundedField(
            hintText: "Username",
          ),
          PasswordField(
            onChanged: (value) {},
          ),
          Positioned(
              top: 450,
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
                  "SIGN UP".toUpperCase(),
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
              ))
        ],
      ),
    ));
  }
}

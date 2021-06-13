import 'package:flutter/material.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("Don't Have an Account? ",
            style: TextStyle(
              color: Colors.blue[900],
            )),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

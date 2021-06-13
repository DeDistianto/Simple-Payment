import 'package:flutter/material.dart';

class NominalBtn extends StatelessWidget {
  const NominalBtn({
    Key key,
    this.money,
    this.button,
  }) : super(key: key);

  final String money;
  final Function button;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: button,
      child: Text(
        money,
        style: TextStyle(color: Colors.black),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

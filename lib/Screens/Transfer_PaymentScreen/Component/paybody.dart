import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/Transfer_PaymentScreen/Component/topbody.dart';
import 'package:simplepayment/Components/buttons.dart';
import 'package:simplepayment/constants.dart';

class PayBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        TopofBody(
          titles: "Transfer Payment",
          text: "Insert Pin",
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        TFButtons(
          text: "scan qr code",
          color: Colors.blue[800],
          press: () {},
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        TFButtons(
          text: "Continue",
          color: kPrimaryColor,
          press: () {},
        ),
      ],
    );
  }
}

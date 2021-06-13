import 'package:flutter/material.dart';
import 'package:simplepayment/Components/buttons.dart';
import 'package:simplepayment/Screens/TopUpScreen/Components/connectcard.dart';
import 'package:simplepayment/Screens/TopUpScreen/Components/ownnominal.dart';
import 'package:simplepayment/Components/title.dart';
import 'package:simplepayment/Screens/TopUpScreen/Components/topupselection.dart';
import 'package:simplepayment/constants.dart';

class TopUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HeadingTitles(
          title: "Top Up",
        ),
        TopUpSelect(),
        OwnNominal(),
        ConnectCard(),
        TFButtons(
          text: "Confirm",
          press: () {},
          color: kPrimaryColor,
        )
      ],
    );
  }
}

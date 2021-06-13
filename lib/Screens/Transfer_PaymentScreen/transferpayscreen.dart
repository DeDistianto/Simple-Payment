import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/Transfer_PaymentScreen/Component/paybody.dart';

class TfPayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: PayBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Image.asset(
        "assets/images/simplepayment_logo.png",
        fit: BoxFit.cover,
        height: 100,
        width: 100,
      ),
    );
  }
}

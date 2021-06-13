import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/HomeScreen/Components/more.dart';
import 'package:simplepayment/Screens/HomeScreen/Components/otherprop.dart';
import 'package:simplepayment/Screens/HomeScreen/Components/scrollrecommend.dart';
import 'package:simplepayment/Screens/HomeScreen/Components/topbox.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        TopBody(size: size),
        OtherProp(),
        MoreBtn(title: "Recommended", press: () {}),
        ScrollRecommend()
      ],
    );
  }
}

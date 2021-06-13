import 'package:flutter/material.dart';
import 'package:simplepayment/Components/title.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HeadingTitles(
          title: "Profile",
        ),
        Container(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simplepayment/Components/title.dart';
import 'package:simplepayment/Screens/HistoryScreen/Components/historybox.dart';

class HistoryBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        HeadingTitles(
          title: "History",
        ),
        HistoryBox(),
      ],
    );
  }
}

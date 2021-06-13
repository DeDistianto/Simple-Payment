import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class HistoryBox extends StatelessWidget {
  const HistoryBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.8,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

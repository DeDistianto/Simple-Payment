import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/TopUpScreen/Components/nominalselect.dart';
import 'package:simplepayment/constants.dart';

class TopUpSelect extends StatelessWidget {
  const TopUpSelect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 0.2),
      padding: EdgeInsets.only(
        left: kDefaultPadding * 1.5,
        right: kDefaultPadding * 1.5,
        bottom: 0,
        top: 5,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black54,
            width: 5,
          ),
        ),
      ),
      height: 100,
      child: Column(
        children: <Widget>[
          Text(
            "Top Up Selection".toUpperCase(),
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NominalBtn(
                  money: "Rp50.000",
                  button: () {},
                ),
                NominalBtn(
                  money: "Rp100.000",
                  button: () {},
                ),
                NominalBtn(
                  money: "Rp200.000",
                  button: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

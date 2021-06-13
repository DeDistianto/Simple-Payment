import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';
import 'package:flutter/services.dart';

class OwnNominal extends StatelessWidget {
  const OwnNominal({
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
            "Input Money Nominal".toUpperCase(),
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Rp10.000",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          )
        ],
      ),
    );
  }
}

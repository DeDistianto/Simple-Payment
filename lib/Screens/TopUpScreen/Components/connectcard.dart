import 'package:flutter/material.dart';
import 'package:simplepayment/constants.dart';

class ConnectCard extends StatelessWidget {
  const ConnectCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.25 - 27,
            child: Column(
              children: <Widget>[
                Text(
                  "Connect A Card".toUpperCase(),
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.credit_card_rounded),
                    onPressed: () {},
                    iconSize: 50,
                  ),
                  Text(
                    "Connect+".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

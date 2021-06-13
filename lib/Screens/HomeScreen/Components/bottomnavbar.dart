import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/HistoryScreen/history.dart';
import 'package:simplepayment/Screens/TopUpScreen/topup.dart';
import 'package:simplepayment/Screens/Transfer_PaymentScreen/transferpayscreen.dart';

import '../../../constants.dart';

class NavBarBtm extends StatelessWidget {
  const NavBarBtm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: 0,
        top: 5,
      ),
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black54,
          width: 4,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Material(
            type: MaterialType.transparency,
            child: Container(
              child: Column(
                children: <Widget>[
                  Ink(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 4,
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(1000.0),
                      child: IconButton(
                          icon: Icon(Icons.add),
                          iconSize: 35,
                          tooltip: "Top Up",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return TopUpScreen();
                                },
                              ),
                            );
                          }),
                    ),
                  ),
                  Text(
                    "Top Up".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Material(
            type: MaterialType.transparency,
            child: Container(
              child: Column(
                children: <Widget>[
                  Ink(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 4,
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(1000.0),
                      child: IconButton(
                          icon: Icon(Icons.arrow_upward),
                          iconSize: 35,
                          tooltip: "Transfer",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return TfPayScreen();
                                },
                              ),
                            );
                          }),
                    ),
                  ),
                  Text(
                    "transfer".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Material(
            type: MaterialType.transparency,
            child: Container(
              child: Column(
                children: <Widget>[
                  Ink(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 4,
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(1000.0),
                      child: IconButton(
                          icon: Icon(Icons.history),
                          iconSize: 35,
                          tooltip: "Payment History",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return PayHistoryScreen();
                                },
                              ),
                            );
                          }),
                    ),
                  ),
                  Text(
                    "History".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/ProfileScreen/profile.dart';

import '../../../constants.dart';

class OtherProp extends StatelessWidget {
  const OtherProp({
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
        top: 15,
      ),
      height: 90,
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
                          icon: Icon(Icons.person),
                          iconSize: 35,
                          tooltip: "Profile",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProfileScreen();
                                },
                              ),
                            );
                          }),
                    ),
                  ),
                  Text(
                    "Profile".toUpperCase(),
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
                          icon: Icon(Icons.qr_code_outlined),
                          iconSize: 35,
                          tooltip: "QR Code",
                          onPressed: () {}),
                    ),
                  ),
                  Text(
                    "QR Code".toUpperCase(),
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
                          icon: Icon(Icons.mail),
                          iconSize: 35,
                          tooltip: "Mail",
                          onPressed: () {}),
                    ),
                  ),
                  Text(
                    "Mail".toUpperCase(),
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
                          icon: Icon(Icons.settings),
                          iconSize: 35,
                          tooltip: "Settings",
                          onPressed: () {}),
                    ),
                  ),
                  Text(
                    "Settings".toUpperCase(),
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

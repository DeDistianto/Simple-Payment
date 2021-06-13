import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/HomeScreen/Components/bottomnavbar.dart';
import 'package:simplepayment/constants.dart';

class TopBody extends StatelessWidget {
  const TopBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.48 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 180,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              height: 140,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(29),
              ),
              child: Text(
                "PROMO",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 25,
            child: Row(
              children: <Widget>[
                Text(
                  "balance".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 40,
            child: Row(
              children: <Widget>[
                Text(
                  "Rp. 0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: NavBarBtm(),
          )
        ],
      ),
    );
  }
}

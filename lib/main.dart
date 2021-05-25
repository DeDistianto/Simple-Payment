import 'package:flutter/material.dart';
import 'package:simplepayment/Screens/WelcomeScreen/Welcome.dart';
import 'package:simplepayment/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Payment',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Color(0xFF01579B),
      ),
      home: WelcomeScreen(),
    );
  }
}

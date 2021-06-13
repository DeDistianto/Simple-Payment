import 'package:flutter/material.dart';
import 'package:simplepayment/Components/textfield.dart';
import 'package:simplepayment/constants.dart';

class RoundedField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFields(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

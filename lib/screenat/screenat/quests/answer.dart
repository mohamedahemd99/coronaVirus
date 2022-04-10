// @dart=2.9
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Answers extends StatelessWidget {
  final Function press;
  final String answerText;
  const Answers({Key key, this.press, this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: RaisedButton(
        color: mainColor,
        onPressed: press,
        child: Text(
          answerText,
          style: subtxtStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

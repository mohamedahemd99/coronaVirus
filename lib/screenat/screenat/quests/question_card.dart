// @dart=2.9
// ignore_for_file: deprecated_member_use

import 'package:covid_infected_helper/screenat/screenat/quests/answer.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    this.questText,
    this.questionIndex,
  }) : super(key: key);

  final String questText;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 8),
            blurRadius: 24,
            color: shadow,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 35,
            decoration: const BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Q : $questionIndex',
                    style: const TextStyle(fontSize: 18, color: bg)),
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Text(
              questText,
              style: titleStyle,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

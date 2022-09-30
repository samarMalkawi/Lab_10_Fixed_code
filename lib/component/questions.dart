import 'package:flutter/material.dart';
import 'package:lab_10/component/check_answer.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    this.Q_Image,
    this.correct,
    this.more_info,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;

  String? Q_Image;

  String? more_info;

  String? correct;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth, image: AssetImage("$Q_Image"))),
          child: Text(
            "$qus_text",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Divider(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(22),
          child: Column(children: [
            Row(
              children: [
                check_answer(correct, answer_1, more_info),
                SizedBox(width: 80),
                check_answer(correct, answer_2, more_info),
              ],
            ),
            Divider(
              height: 30,
            ),
            Row(
              children: [
                check_answer(correct, answer_3, more_info),
                SizedBox(width: 80),
                check_answer(correct, answer_4, more_info),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}

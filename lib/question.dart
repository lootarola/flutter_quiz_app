import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTitle;
  final String questionText;

  Question(this.questionTitle, this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            questionTitle,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 150,
          ),
          Text(
            questionText,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}

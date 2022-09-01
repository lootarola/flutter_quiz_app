import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite color'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('The question!'),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionTitle':
          'Did you know that the first red card given on a football match ever was to a chilean player?',
      'questionText': 'What was the name of this player?',
      'answers': [
        {'text': 'Elías Figueroa', 'score': 0},
        {'text': 'Carlos Caszely', 'score': 1},
        {'text': 'Patricio Yáñez', 'score': 0},
        {'text': 'Iván Zamorano', 'score': 0},
      ],
    },
    {
      'questionTitle':
          'Did you know that the first president of Chile wasn\'t chilean?',
      'questionText': 'Where was the first president of Chile born?',
      'answers': [
        {'text': 'Perú', 'score': 0},
        {'text': 'Bolivia', 'score': 0},
        {'text': 'Uruguay', 'score': 0},
        {'text': 'Argentina', 'score': 1}
      ],
    },
    {
      'questionTitle':
          'Did you know that chilean Airport "Arturo Merino Benítez" is missing a boarding gate?',
      'questionText': 'Which is the number of the gate missing?',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '13', 'score': 1},
        {'text': '21', 'score': 0},
        {'text': '17', 'score': 0}
      ],
    },
    {
      'questionTitle':
          'Did you know that Chile has the largest earthquake registered in the world?',
      'questionText': 'What was its magnitude? (Richter Scale)',
      'answers': [
        {'text': '8,5', 'score': 0},
        {'text': '9,0', 'score': 0},
        {'text': '7,8', 'score': 0},
        {'text': '9,5', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('QuizApp'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

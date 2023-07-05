import 'package:flutter/material.dart';
import 'package:flutter_initial/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}
//Instead for above function
//void main() => runApp(MyApp());
//If this is possible for only that contain one argument inside the function

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //This state belong to MyApp class

  final _questions = const [
    //Map
    {
      'questionText': 'what\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },

    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['Rabit', 'Snake', 'Elephant', 'Lion'],
    },

    {
      'questionText': 'who\'s your favorite instructor?',
      'answers': ['Akila', 'Yasas', 'Anne', 'Mindula', 'thisakya'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We hav more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}

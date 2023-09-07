import 'package:flutter/material.dart';
import 'package:lj_quiz/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ' LJ Uniersity Quiz Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuizScreen());
  }
}

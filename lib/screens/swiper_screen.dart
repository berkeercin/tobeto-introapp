// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:introapp/screens/home_screen.dart';
import 'package:introapp/screens/quiz_screen.dart';
import 'package:introapp/screens/result_screen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  int total = 0;
  int correct = 0;
  int incorrect = 0;
  List _answers = [];
  List _correctAnswers = [];
  List question = [];
  String activeScreenName = "home-screen";
  void goToPage(int a) {
    if (a == 0) {
      setState(() {
        activeScreenName = "quiz-screen";
      });
    }
    if (a == 1) {
      setState(() {
        activeScreenName = "final-screen";
      });
    }
  }

  void transferValues(int a, int b, int c, List d, List e, List f) {
    total = a;
    correct = b;
    incorrect = c;
    _answers = d;
    _correctAnswers = e;
    question = f;
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen(goToPage);
    if (activeScreenName == "quiz-screen") {
      activeScreen = QuizScreen(goToPage, transferValues);
    }
    if (activeScreenName == "final-screen") {
      activeScreen = ResultScreen(
          total, correct, incorrect, _answers, _correctAnswers, question);
    }
    return Container(
      child: activeScreen,
    );
  }
}

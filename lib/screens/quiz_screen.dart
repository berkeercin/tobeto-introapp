import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen(this.onStartButtonPressed, this.tranferValue, {Key? key})
      : super(key: key);
  final Function(int pageNumber) onStartButtonPressed;
  final Function(int a, int b, int c, List d, List e, List f) tranferValue;
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  int total = 0;
  int correct = 0;
  int incorrect = 0;
  final List _answers = [];
  final List _correctAnswers = [];
  final List _questions = [];
  int questionNumber = 0;
  void changeQuestion() {
    setState(() {
      if (questionNumber >= questions.length - 1) {
        widget.tranferValue(
            total, correct, incorrect, _answers, _correctAnswers, _questions);
        widget.onStartButtonPressed(1);
      } else {
        questionNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[questionNumber].question,
                style: const TextStyle(color: Colors.white, fontSize: 32),
              ),
              ...questions[questionNumber].answers.map((answer) {
                return ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      total++;
                      if (answer == questions[questionNumber].correctAnswer) {
                        correct++;
                      } else {
                        incorrect++;
                      }
                      _questions.add(questions[questionNumber].question);
                      _correctAnswers
                          .add(questions[questionNumber].correctAnswer);
                      _answers.add(answer);
                      changeQuestion();
                    },
                    child: Text(answer));
              }),
            ],
          ),
        ),
      ),
    );
  }
}

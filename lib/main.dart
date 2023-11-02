import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

void main() {
  runApp(const MaterialApp(home: QuizScreen()));
}

// boilerPlate => basmakalıp
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); //1. gereksinim

  //2. gereksinim
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 240,
            ),
            // Image.network(
            //     "https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
            Text("Quiz app",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
            ElevatedButton(
              onPressed: () {},
              child: Text("Oyuna başla"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

// Sabit UI

// StatefulWidget
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  String text = "Aşağıdakilerden hangisi bir widget türüdür?";
  int questionNumber = 0;
  void changeText() {
    setState(() {
      text = "Yeni değer";
    });
  }

  void changeQuestion() {
    setState(() {
      if (questionNumber >= questions.length - 1) {
        print(questionNumber);
        questionNumber = 0;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[questionNumber].question,
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            ...questions[questionNumber].answers.map((answer) {
              return ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    changeQuestion();
                  },
                  child: Text(answer));
            }),
          ],
        ),
      ),
    );
  }
}

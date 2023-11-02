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
  void changeText() {
    setState(() {
      text = "Yeni değer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ...questions[0].answers.map((answer) {
              return ElevatedButton(
                  onPressed: () {
                    changeText();
                  },
                  child: Text(answer));
            }),
          ],
        ),
      ),
    );
  }
}

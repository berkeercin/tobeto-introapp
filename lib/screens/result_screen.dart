// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(this.total, this.correct, this.incorrect, this._answers,
      this._correctAnswers, this._questions,
      {Key? key})
      : super(key: key);
  final int total;
  final int correct;
  final int incorrect;
  final List _answers;
  final List _correctAnswers;
  final List _questions;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int indexNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(134, 3, 89, 248),
      child: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const ListTile(),
            ListTile(
                subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Toplam:\n${widget.total}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Doğru:\n${widget.correct}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Yanlış\n${widget.incorrect}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
            ...widget._answers.map((answer) {
              ++indexNumber;
              if (answer == widget._correctAnswers[indexNumber - 1]) {
                return ListTile(
                  title: Text(
                    "Soru: " + widget._questions[indexNumber - 1],
                    style: const TextStyle(
                        color: Colors.black,
                        wordSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    '${'Cevabınız:' + widget._answers[indexNumber - 1]}\nDoğru cevap: ' +
                        widget._correctAnswers[indexNumber - 1],
                    style: const TextStyle(
                        color: Color.fromARGB(255, 16, 131, 20), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                );
              } else {
                return ListTile(
                  title: Text(
                    "Soru: " + widget._questions[indexNumber - 1],
                    style: const TextStyle(
                        color: Colors.black,
                        wordSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    '${'Cevabınız:' + widget._answers[indexNumber - 1]}\nDoğru cevap: ' +
                        widget._correctAnswers[indexNumber - 1],
                    style: const TextStyle(
                        color: Color.fromARGB(255, 134, 20, 11), fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                );
              }
            })
          ],
        ),
      ),
    ));
  }
}

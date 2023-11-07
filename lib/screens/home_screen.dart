// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key}); //1. gereksinim
  final void Function(int pageNumber) onStartButtonPressed;
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
            const Text("Quiz app",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
            ElevatedButton(
              onPressed: () {
                onStartButtonPressed(0);
              },
              child: const Text("Oyuna başla"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

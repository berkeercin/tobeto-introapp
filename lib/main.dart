import 'package:flutter/material.dart';
// flutter'i initalize eden runApp

// Widget => en küçükten en büyüğe giden şablonlar

// constant
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 57, 7, 96), // Configuration Widget
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("./assets/images/berkeercin.jpg")),
            Text(
              "Berke Erçin",
              style: TextStyle(fontSize: 38, color: Colors.white),
            ),
            Text(
              "Tobeto - Mobil Geliştirici - 1B",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Text(
              "31.10.2023",
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        )),
      ),
    ),
  );
}

// intelisens => ctrl + space
// SHIFT + ALT + F
// sağ tık -> format document

// Stateless => UI
// Stateful => Dynamic UI


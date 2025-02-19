import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  List<Widget> rainbowTexts(String data) {
    final List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.pink,
    ];

    List<Widget> textList = [];

    int counter = 7;

    data.split('').forEach((char) {
      textList.add(
        Text(
          char,
          style: TextStyle(color: colors[(counter % 7)]),
        ),
      );
      counter++;
    });

    return textList;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('executou o método build');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
        ),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: rainbowTexts('Hello World!'),
            ),
          ),
        ),
      ),
    );
  }
}

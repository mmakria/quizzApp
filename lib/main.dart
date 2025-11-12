import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.amber, Colors.tealAccent],
            ),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}

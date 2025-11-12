import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 220,
            color: const Color.fromARGB(235, 255, 255, 255),
          ),
          SizedBox(height: 60),
          Text("Learn Flutter the fun way !", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(padding: EdgeInsets.all(12)),
            icon: const Icon(Icons.accessibility_outlined),
            label: Text(' Start quizz', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currenQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currenQuestion.text),
          SizedBox(height: 30),
          ...currenQuestion.answers.map((anwser) {
            return AnswerButton(anwser, () {});
          }),
          AnswerButton(currenQuestion.answers[0], () {}),
        ],
      ),
    );
  }
}

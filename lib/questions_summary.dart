import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color goodColor = Colors.blue;
    Color wrongColor = const Color.fromARGB(255, 203, 124, 120);

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: data['user_answer'] == data['correct_answer']
                        ? goodColor
                        : wrongColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 126, 114, 114),
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}





// Instead of writing

// Text(((data['question'] as int) + 1).toString()),
// write

// Text(((data['question_index'] as int) + 1).toString()),
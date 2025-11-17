class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}

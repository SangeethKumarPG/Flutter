class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  
  List<String> getShuffledAnswers() {
    final List<String> copyOfAnswers = List.of(answers);
    copyOfAnswers.shuffle();
    return copyOfAnswers;
  }
}
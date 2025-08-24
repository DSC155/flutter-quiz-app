class Quizques {
  @override
  const Quizques(this.question, this.ans);
  final String question;
  final List<String> ans;

  List<String> getshuffled() {
    final shuff = List.of(ans);
    shuff.shuffle();
    return shuff;
  }
}

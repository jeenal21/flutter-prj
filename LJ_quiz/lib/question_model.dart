class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "(1)  What is Flutter?",
    [
      Answer("A. Flutter is an open-source DBMS", false),
      Answer("B. Flutter is an open-source UI toolkit", true),
      Answer("C. Flutter is an open-source backend toolkit", false),
      Answer("D. All of the above", false),
    ],
  ));

  list.add(Question(
    "(2)  Who developed the Flutter Framework and continues to maintain it today?",
    [
      Answer("A. Facebook", false),
      Answer("B. Microsoft", false),
      Answer("C. Google", true),
      Answer("D. Oracle", false),
    ],
  ));

  list.add(Question(
    "(3)  Which programming language is used to build Flutter applications?",
    [
      Answer("A. Kotlin ", false),
      Answer("B. Dart ", true),
      Answer("C. Java ", false),
      Answer("D. Go ", false),
    ],
  ));

  list.add(Question(
    "(4) How many types of widgets are there in Flutter?",
    [
      Answer("A. 2 ", true),
      Answer("B. 4 ", false),
      Answer("C. 6  ", false),
      Answer("D. 8+ ", false),
    ],
  ));

  list.add(Question(
    "(5) When building for iOS, Flutter is restricted to an __ compilation strategy",
    [
      Answer("A. AOT (ahead-of-time)", true),
      Answer("B. JIT (Just-in-time)", false),
      Answer("C. Transcompilation", false),
      Answer("D. Recompilation", false),
    ],
  ));
  list.add(Question(
    "(5) Who is developer of c language?",
    [
      Answer("A.  Danis Richie", true),
      Answer("B. xyz ", false),
      Answer("C. abc ", false),
      Answer("D. cde ", false),
    ],
  ));

  return list;
}

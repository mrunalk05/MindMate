class Question {
  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool isCorrect;
Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "My Feelings are cleared to me at any given moment",
    [
      Answer("YES",true),
      Answer("NO",false),
      Answer("Sometimes",false),
    ],
  ));

  list.add(Question(
    "Emotions play an important part in my life",
    [
      Answer("YES",false),
      Answer("NO",true),
      Answer("Sometimes",false),
    ],
  ));

  list.add(Question(
    "My moods impact the People around me",
    [
      Answer("YES",false),
      Answer("NO",true),
      Answer("Sometimes",false),
    ],
  ));

  list.add(Question(
    "I find it easy to put words to my feelings",
    [
      Answer("YES",true),
      Answer("NO",false),
      Answer("Sometimes",false),
    ],
  ));



  return list;
}


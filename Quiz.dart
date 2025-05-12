class Question {
  String QuestionText;
  String QuestionAnswer;

  Question(this.QuestionText, this.QuestionAnswer);

  bool CorrectAnswer(String UserAnswer) {
    if (UserAnswer == QuestionAnswer) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  List<Question> ques = [
    Question("name of the king", "Hitler"),
    Question("what has a 200 teeths and holds back a monster", "pantZipper"),
  ];

  int score = 0;

  List<String> UserAnswer = ["Hitler" , "Zipper"];

  for(int i =0 ;i<ques.length ;i++){
    if(ques[i].CorrectAnswer(UserAnswer[i])){
      score++;
    }
  }

  print("${score} / ${ques.length} ");
}

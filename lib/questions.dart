import './question.dart';

class Questions{

  List<int> score;
  int currentQuestion= 0;
  List<Question> questions;

  Questions(){
    questions = new List<Question>();
    score = new List<int>();
    this.questions.add(addQuestion1());
    this.questions.add(addQuestion2());
    this.questions.add(addQuestion3());
    this.questions.add(addQuestion4());
    this.questions.add(addQuestion5());
  }
  
  // -1 or 1 only
  bool moveCurrentQuestion(int number){
    if(this.currentQuestion == 0 && number == -1){
      return false;
    }
    if(this.currentQuestion == 4 && number == 1){
      return false;
    }
    currentQuestion += number;
    return true;
    
  }

  int getCurrentPos(){
    return this.currentQuestion;
  }

  void answer(int value){
    this.score.add(value);
  }

  int getTotalScore(){
    int x =0;
    for (var i = 0; i < score.length; i++) {
      x+= score[i];
    }
    return x;
  }

  bool isComplete(){
    if(score.length<4)
      return false;
    for (var i = 0; i < score.length; i++) {
      if(score[i] == 0){
        return false;
      }
      return true;
    }
  }

  String getQuestion(){
    return this.questions[currentQuestion].getQuestion();
  }

  String getChoice(int cNumber){
    return this.questions[currentQuestion].getChoice()[cNumber];
  }

  void removeLast(){
    this.score.removeLast();
  }

  Question addQuestion1(){
    var q = Question("Who Would You Most Like To Sit Next To On A 10-Hour Flight?");
    q.addChoice("A. Your Friends");
    q.addChoice("B. The Stewardess");
    q.addChoice("C. The Pilot");
    q.addChoice("D. GSauce");
    return q;
  }

  Question addQuestion2(){
    var q = new Question("What would you want People Say At Your Funeral?");
      q.addChoice("A. We will miss you");
      q.addChoice("B. Why did you leave so early");
      q.addChoice("C. Aviredecci");
      q.addChoice("D. MEZAMETAMAE WAGA ARUJI TACHI YO!");
    return q;
  }

  Question addQuestion3(){
    var q = new Question("If You Were A Man/Woman For A Day, What Would Be The First Thing You Do?");
      q.addChoice("A. Have a mental breakdown");
      q.addChoice("B. Date the other gender");
      q.addChoice("C. Tell your parents you've undergone surgery");
      q.addChoice("D. TOUCH BY TOUCH YOU'RE MY ALL TIME LOVER");
      return q;
  }

  Question addQuestion4(){
    var q = new Question(" If Everything In Your House Had To Be One Color Which Color Would You Choose?");
      q.addChoice("A. Yellow");
      q.addChoice("B. Orange");
      q.addChoice("C. Green");
      q.addChoice("D. Blue");
      return q;
  }

  Question addQuestion5(){
    var q = new Question("How many months does twins need to be born?");
      q.addChoice("A. 18 months");
      q.addChoice("B. 12 months");
      q.addChoice("C. 8 months");
      q.addChoice("D. Time will tell");
      return q;
  }

}
class Question{

  String question = "";
  List<String> choices;

  Question(String question){
    choices = List();
    this.question = question;
  }


  void addChoice(String choice){
    choices.add(choice);
  }

  String getQuestion(){
    return this.question;
  }

  List<String> getChoice(){
    return this.choices;
  }
}
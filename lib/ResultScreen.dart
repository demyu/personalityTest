import 'package:flutter/material.dart';
import './questions.dart';

class Result extends StatefulWidget {
  
  Questions questions;

  Result({this.questions});

  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  
  @override
  Widget build(BuildContext context) {
    
    String result = "";
    
    switch (widget.questions.getTotalScore()){
      case 4: 
        result = "Family Planning Advice; Use Rear Entrance";
        break;
      case 5:
        result = "Don’t yell at your kids. Lean in close and whisper; it's much scarier.";
        break;
      case 6:
        result = "If no one comes from the future to stop you from doing it, then how bad of a decision can it really be?";
        break;
      case 7:
        result = "Never put your hand where you woudn't put your willy";
        break;
      case 8: 
        result = "Be yourself is about the worst advice you can give to people";
        break;
      case 9:
        result = "Never break two laws at the same time. That's how you get caught";
        break;
      case 10:
        result = "If you see someone crying, ask if it is because of their haircut";
        break;
      case 11:
        result = "Free cheese only comes in traps";
        break;
      case 12:
        result = "When life hands you lemons, have a beer";
        break;
      case 13: 
        result = "Never do anything you wouldn't want to explain to the paramedics";
        break;
      case 14:
        result = "If at first you don't suceed... So much for skydiving";
        break;
      case 15:
        result = "Do not trust childrens. They are here to replace us";
        break;
      case 16:
        result = "You shouldn't be sad because sad spelled backwards is das and Das not gud";
        break;
      case 17:
        result = "For every minute you are angry, you lose sixty seconds of happiness";
        break;
      case 18:
        result = "Genius people can read this without getting tounge twisted; Eye, Yam, Stew, Peed";
        break;
      case 19:
        result = "Life will never be perfect. Make it work";
        break;
      case 20:
        result = "Stay in drugs, eat your school, don't do vegetables";
        break;
      default:
    }
    widget.questions.removeLast();
    return Scaffold(
      appBar: AppBar(
        title: Text("Resuts"),
      ),
      body: Center(
        child: Text(result, style: TextStyle(fontSize: 30),
        )
        ),
      
    );
  }
}
import 'package:flutter/material.dart';
import 'questions.dart';
import 'package:flutter/cupertino.dart';
import './ResultScreen.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Questions test = Questions();
  String selected = "0";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
    return Scaffold(
        appBar: AppBar(
            title: Text("Personality Test"),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      if(test.moveCurrentQuestion(-1)){
                        this.test.removeLast();
                      }
                    });
                  }),
              
              IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      if(test.moveCurrentQuestion(1)){
                        this.test.answer(int.parse(selected)); 
                      }else if(test.isComplete()){
                        this.test.answer(int.parse(selected));
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Result(questions: test,)));
                        }
                      
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.autorenew),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      test = new Questions();
                    });
                  })
            ]),
        //BODY Starts here ===============================================================

        body: Column(children: [
          SizedBox(height: 50),
          Expanded(
            child: Text(test.getQuestion(), style: TextStyle(fontSize: 30),)
          ),
          Expanded(
            child: Column(children: [
              ListTile(
                  title: Text(test.getChoice(0)),
                  leading: Radio(
                    value: "1",
                    groupValue: selected,
                    onChanged: (String value) {
                      setState(() {
                        selected = value;
                      });
                    },
                  ),
                ),
              ListTile(
                  title: Text(test.getChoice(1)),
                  leading: Radio(
                    value: "2",
                    groupValue: selected,
                    onChanged: (String value) {
                      setState(() {
                        selected = value;
                     });
                    },
                  ),
                ),
              ListTile(
                  title: Text(test.getChoice(2)),
                  leading: Radio(
                    value: "3",
                    groupValue: selected,
                    onChanged: (String value) {
                      setState(() {
                        selected = value;
                      });
                    },
                  ),
                ),
              ListTile(
                  title: Text(test.getChoice(3)),
                  leading: Radio(
                    value: "4",
                    groupValue: selected,
                    onChanged: (String value) {
                      setState(() {
                        selected = value;
                      });
                    },
                  ),
                ),
            ]),
          ),
        ]));
  }
}

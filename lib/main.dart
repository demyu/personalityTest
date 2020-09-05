import 'package:flutter/material.dart';
import 'package:personalitytest/HomeScreen.dart';

void main() {
  runApp(personalityTest());
}


class personalityTest extends StatefulWidget{

  _personalityTestState createState() => _personalityTestState();
}

class _personalityTestState extends State<personalityTest>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return MaterialApp(
      title: "Personality Test",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomeScreen()
    );
  }
}
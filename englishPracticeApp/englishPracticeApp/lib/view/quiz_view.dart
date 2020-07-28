import 'package:flutter/material.dart';
import 'package:quizscreen/components/button.dart';
import 'package:quizscreen/components/quiz_card.dart';
import "package:quizscreen/view/quiz_view.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff11172f),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text("00:10",
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  "What is \"reading\" in Turkish?",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              QuizCard(),
              ProfileButton(),
              ProfileButton(),
              ProfileButton(),
            ],
          ),
        ),
      ),
    );
  }
}

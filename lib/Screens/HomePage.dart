import 'package:quizapp/Screens/QuizPage.dart';
import 'package:quizapp/Screens/QuizPage2.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}

void gotoQuizPage2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage2()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      backgroundColor:Colors.indigo[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Merhaba, Teste Hoşgeldiniz.',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          RaisedButton(
            color: Colors.indigo[400],
            onPressed: () {
              gotoQuizPage(context);
            },
            child: Text('Coğrafya Testine Başla'),
          ),
          RaisedButton(
            color: Colors.indigo[400],
            onPressed: () {
              gotoQuizPage2(context);
            },
            child: Text('Edebiyat Testine Başla'),
          )
        ],
      ),
    );
  }
}
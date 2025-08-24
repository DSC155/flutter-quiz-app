import 'package:flutter/material.dart';
import 'package:second/ques.dart';
import 'package:second/questions.dart';
import 'package:second/result.dart';
import 'package:second/start.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectans = [];
  var active = 'Start';
  void switchScreen() {
    setState(() {
      active = 'Question';
    });
  }

  void chooseans(String ans) {
    selectans.add(ans);
    if (selectans.length == Ques.length) {
      setState(() {
        active = 'result';
      });
    }
  }

  void restart() {
    setState(() {
      selectans = [];
      active = 'Start';
    });
  }

  @override
  Widget build(context) {
    Widget screenwidget = Start(switchScreen);
    if (active == 'Question') {
      screenwidget = Questions(onselected: chooseans);
    }
    if (active == 'result') {
      screenwidget = Result(chosenans: selectans, onrestart: restart);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 90, 32, 189),
                const Color.fromARGB(255, 69, 28, 140),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(child: screenwidget),
        ),
      ),
    );
  }
}

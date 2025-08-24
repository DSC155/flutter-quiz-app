import 'package:flutter/material.dart';
import 'package:second/models/ansbut.dart';
import 'package:second/ques.dart';

// ignore: must_be_immutable
class Questions extends StatefulWidget {
  Questions({super.key, required this.onselected});
  void Function(String ans) onselected;
  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  var ansque = 0;

  void answered(String selectedans) {
    widget.onselected(selectedans);

    setState(() {
      ansque++;
    });
    if (ansque >= Ques.length) {}
  }

  @override
  Widget build(context) {
    final current = Ques[ansque];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              current.question,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...current.getshuffled().map((ans) {
              return Ansbut(
                answer: ans,
                ontap: () {
                  answered(ans);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

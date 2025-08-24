import 'package:flutter/material.dart';
import 'package:second/ques.dart';
import 'package:second/quessummary.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.chosenans, required this.onrestart});
  final List<String> chosenans;
  final VoidCallback onrestart;
  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenans.length; i++) {
      summary.add({
        'quesind': i,
        'ques': Ques[i].question,
        'corans': Ques[i].ans[0],
        'userans': chosenans[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getsummarydata();
    final numtotal = Ques.length;
    final numcorrect = summarydata.where((data) {
      return data['userans'] == data['corans'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numcorrect out of $numtotal questions corectly!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 30),
            Quessummary(summarydata: getsummarydata()),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: ElevatedButton(
                onPressed: onrestart,
                child: Text(
                  'Restart Quiz',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

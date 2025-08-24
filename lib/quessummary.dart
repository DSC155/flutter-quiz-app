import 'package:flutter/material.dart';

class Quessummary extends StatelessWidget {
  const Quessummary({super.key, required this.summarydata});
  final List<Map<String, Object>> summarydata;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  child: Text(((data['quesind'] as int) + 1).toString()),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        data['ques'] as String,
                        style: TextStyle(color: Colors.white),
                      ),

                      Text(
                        data['userans'] as String,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        data['corans'] as String,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

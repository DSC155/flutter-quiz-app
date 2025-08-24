import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Start extends StatelessWidget {
  const Start(this.startquiz, {super.key});
  final void Function() startquiz;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/img.png', width: 200),
        const SizedBox(height: 80),
        const Text(
          'Lets Learn flutter in a fun way',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startquiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: Icon(Icons.arrow_right),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Ansbut extends StatelessWidget {
  const Ansbut({super.key, required this.answer, required this.ontap});
  final String answer;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(answer, textAlign: TextAlign.center),
    );
  }
}

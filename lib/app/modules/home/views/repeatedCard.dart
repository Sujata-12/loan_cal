import 'package:flutter/material.dart';

class RepeatedCard extends StatelessWidget {
  const RepeatedCard({ required this.labelText, required this.onPressed});

  final String labelText;
  final Function(String) onPressed;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
           onChanged: onPressed,

            decoration:  InputDecoration(labelText: labelText),
            keyboardType: TextInputType.number,

          ),
        ),
      ),
    );
  }
}
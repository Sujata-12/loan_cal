import 'package:flutter/material.dart';

class RepeatedCard extends StatelessWidget {
  const RepeatedCard({required this.textField});

  final Widget textField;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: textField,
        ),
      ),
    );
  }
}
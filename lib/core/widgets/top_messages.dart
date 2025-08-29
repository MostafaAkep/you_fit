import 'package:flutter/material.dart';

class TopMessages extends StatelessWidget {
  const TopMessages(this.h1Message, this.h2Message, {super.key});
  final String h1Message;
  final String h2Message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          h1Message,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
          h2Message,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    );
  }
}

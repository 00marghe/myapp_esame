import 'package:flutter/material.dart';

class MessageAIWidget extends StatelessWidget {
  const MessageAIWidget({super.key, required this.label});
  // ^ secondo punto x dichiararlo

//primo punto x dichiarare un parametro
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label);
    //terzo punto, dichiararlo nel testo
  }
}

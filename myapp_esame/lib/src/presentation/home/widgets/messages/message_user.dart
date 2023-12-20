import 'package:flutter/material.dart';

class MessageUserWidget extends StatelessWidget {
  const MessageUserWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}

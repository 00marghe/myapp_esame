import 'package:flutter/material.dart';

class MessageBubble extends StatefulWidget {
  const MessageBubble({Key? key}) : super(key: key);

  @override
  _HoverableButtonState createState() => _HoverableButtonState();
}

class _HoverableButtonState extends State<MessageBubble> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 740,
      height: 46,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 80, 84, 71),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(30, 202, 254, 72), // Adjust the shadow color
            spreadRadius: 1, // Adjust the spread radius
            blurRadius: 10, // Adjust the blur radius
            offset: Offset(0, 0), // Adjust the offset
          ),
        ],
        border: Border.all(
          color: isHovered
              ? const Color.fromARGB(255, 202, 254, 72)
              : const Color.fromARGB(255, 202, 254, 72),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Message ChatGPT...',
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.none,
                color: Color.fromARGB(90, 202, 254, 72),
              ),
            ),
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered = false;
              });
            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: IconButton(
                onPressed: () {
                  // Add your arrow button functionality here
                },
                icon: const Icon(Icons.arrow_upward),
                color: isHovered
                    ? const Color.fromARGB(255, 202, 254, 72)
                    : const Color.fromARGB(80, 202, 254, 72),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

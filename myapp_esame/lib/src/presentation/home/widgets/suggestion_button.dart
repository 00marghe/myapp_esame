import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionButton extends StatefulWidget {
  const SuggestionButton(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        width: 300,
        height: 80,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isHovered ? Colors.grey[300] : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isHovered ? Colors.black : Colors.grey,
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight:
                          isHovered ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(widget.description),
                ],
              ),
            ),
            isHovered
                ? Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: const Icon(
                      CupertinoIcons.arrow_right,
                      size: 20,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

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
        width: 360,
        height: 100,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color:
                  Color.fromARGB(30, 202, 254, 72), // Adjust the shadow color
              spreadRadius: 1, // Adjust the spread radius
              blurRadius: 10, // Adjust the blur radius
              offset: Offset(0, 0), // Adjust the offset
            ),
          ],
          color: isHovered
              ? const Color.fromARGB(255, 202, 254, 72)
              : const Color.fromARGB(255, 80, 84, 71),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isHovered
                ? const Color.fromARGB(255, 80, 84, 71)
                : const Color.fromARGB(255, 202, 254, 72),
            width: 0.6,
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
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: isHovered
                          ? const Color.fromARGB(255, 80, 84, 71)
                          : const Color.fromARGB(
                              255, 202, 254, 72), // Change colors on hover
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(widget.description,
                      style: TextStyle(
                        fontFamily: 'Acid Grotesk',
                        fontWeight: FontWeight.w200, // Make the text bold
                        color: isHovered
                            ? const Color.fromARGB(255, 80, 84, 71)
                            : const Color.fromARGB(
                                255, 202, 254, 72), // Change colors on hover
                      )),
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

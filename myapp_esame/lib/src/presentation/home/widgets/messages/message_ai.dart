import 'package:flutter/material.dart';

class MessageAIWidget extends StatelessWidget {
  const MessageAIWidget({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 93, 95, 87),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color.fromARGB(255, 202, 254, 72),
          width: 0.4,
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
        child: Column(
          children: [
            const Row(
              children: [
                /*
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20), 
                    border: Border.all(
                      color: const Color.fromARGB(
                          255, 202, 254, 72), 
                      width: 0.8, 
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(20), // Match the border radius
                    child: Image.asset(
                      'assets/gradient.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover, // Optional: Adjust the fit as needed
                    ),
                  ),
                ),
      
                */

                Text(
                  'Chat GPT',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 202, 254, 72)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 202, 254, 72),
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

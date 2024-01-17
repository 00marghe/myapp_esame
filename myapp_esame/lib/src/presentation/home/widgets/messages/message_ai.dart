import 'package:flutter/material.dart';

class MessageAIWidget extends StatelessWidget {
  const MessageAIWidget({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20), // Set the border radius
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 202, 254, 72), // Set the border color
                    width: 0.8, // Set the border width
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
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Chat GPT',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Acid Grotesk',
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
                    color: Color.fromARGB(200, 202, 254, 72),
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

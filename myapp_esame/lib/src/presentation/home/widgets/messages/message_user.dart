import 'package:flutter/material.dart';

class MessageUserWidget extends StatelessWidget {
  const MessageUserWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20), // Set the border radius
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 202, 254, 72), // Set the border color
                    width: 0.5, // Set the border width
                  ),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(20), // Match the border radius
                  child: Image.asset(
                    'assets/m.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover, // Optional: Adjust the fit as needed
                  ),
                ),
              ),
            ),
            const Text(
              'You',
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
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 202, 254, 72),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

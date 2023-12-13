import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber.shade400,
              ),
              child: const Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'star.AI',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bla bla bla',
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(37, 37, 37, 1)),
                        ),
                        Text(
                          'Just here for the memes.',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(37, 37, 37, 1)),
                        ),
                      ],
                    ),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          );
  }
}
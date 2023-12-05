import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/auth/widgets/button.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: SizedBox(
          width: 480,
          child: Padding(
            padding: EdgeInsets.all(16.0), // Adjust the value as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 65,
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Button(label: 'Log In'),
                              //stiamo indicando cosa dev'esserci scritto nel bottone
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Button(label: 'Continue'),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(),
                        Text('Termini di utilizzo '),
                        SizedBox(),
                        Text(' | '),
                        SizedBox(),
                        Text(' Informativa sulla privacy'),
                        SizedBox(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

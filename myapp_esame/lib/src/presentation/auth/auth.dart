import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.amber[200]),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chat GPT', 
                  style: TextStyle(
                    color: Colors.orangeAccent[700],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Brainstorm names for my fantasy football team',
                  style: TextStyle(
                    color: Colors.orangeAccent[700],
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
        /// Sezione bianca DX (Commento monolinea, ma se vai a capo con tre slash continua a metterti i tre slash)
        /* ciao 
        commento multiriga
        ciao */
        Expanded(
          child: Center(
            child: SizedBox(
                width: 480,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox.shrink(),
                Column(
                  children: [
                    Text('Titolo'),
                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text('Log In'),
                      ),
                      
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Terms of Use'),
                        Container(),
                        Text('Privacy')
                      ],
                    ),
                  ],
                ),
              ],),
            ),
          ),)
      ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
      color: const Color.fromARGB(255, 29, 29, 29),
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'ChatGPT',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                if (MediaQuery.sizeOf(context).width <= 600)
                  const CloseButton(),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: const [
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'help me learn to code',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ciao',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ciaaaaaooo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ciao ciao ciao ciao',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Nullam eget',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'estibulum aliquet',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'ciaaaaaaoioo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'estibulum aliquet.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'estibulum aliquet dolor',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 7 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sed ut ligula in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sed ut',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sed ut ligula',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Whitestar_black.svg/1074px-Whitestar_black.svg.png',
                  width: 35,
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upgrade',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Get GPT-4, DALL·E, and more',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'data:image/png;base64,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',
                  width: 35,
                ),
              ),
            ),
            const Text(
              'MARGHE',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ]),
    ));
  }
}

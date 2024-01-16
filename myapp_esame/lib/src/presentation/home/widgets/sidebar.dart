import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // Add a border
        border: Border(
          right: BorderSide(
            color: Color.fromARGB(0, 202, 254, 72), // Border color
            width: 0, // Border width
          ),
        ),
      ),
      child: SizedBox(
          child: Container(
        color: const Color.fromARGB(255, 26, 27, 29),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                              color: Color.fromARGB(150, 202, 254, 72)),
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
                  child: Image.asset(
                    'assets/stars.png',
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
                    style: TextStyle(color: Color.fromARGB(150, 202, 254, 72)),
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
                  child: Image.asset(
                    'assets/gradient.png',
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
      )),
    );
  }
}

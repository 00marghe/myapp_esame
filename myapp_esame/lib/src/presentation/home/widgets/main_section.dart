import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/chat_section.dart';
import 'package:myapp_esame/src/presentation/home/widgets/hoverable_button.dart';
import 'package:myapp_esame/src/presentation/home/widgets/suggestion_button.dart';

class MainSection extends StatelessWidget {
  final TextEditingController messageController = TextEditingController();

  MainSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 93, 95, 87)),
        child: Stack(
          children: [
            Column(
              children: [
                if (MediaQuery.sizeOf(context).width <= 600)
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (!Scaffold.of(context).isDrawerOpen) {
                            Scaffold.of(context).openDrawer();
                          }
                        },
                        child: const Icon(Icons.menu),
                      ),
                    ],
                  ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 14.0),
                          child: HoverableButton(),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 1000,
                            height: 120,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/chatbot-dog.png',
                                width: 250,
                                height: 250,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'How can I help you today?',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 32,
                              color: Color.fromARGB(255, 202, 254, 72),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 50, 100),
                        child: Center(
                          // Wrap the content with Center
                          child: SizedBox(
                            width: 700,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SuggestionButton(
                                        title: 'Ciao',
                                        description: 'Ciaociaociaociaociao',
                                      ),
                                    ),
                                    SizedBox(width: 18),
                                    Expanded(
                                      child: SuggestionButton(
                                        title: 'Hallo',
                                        description: 'Sono inutile',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 18),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SuggestionButton(
                                        title: 'Bella',
                                        description: 'Descrizioneeee',
                                      ),
                                    ),
                                    SizedBox(width: 18),
                                    Expanded(
                                      child: SuggestionButton(
                                        title: 'Title',
                                        description: 'Descrizioneeee1234567',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 93, 95, 87),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    color:
                                        const Color.fromARGB(255, 93, 95, 87),
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 202, 254, 72),
                                      width: 0.4,
                                    ),
                                  ),
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 8.0,
                                              horizontal: 12,
                                            ),
                                            child: TextField(
                                              controller: messageController,
                                              decoration: const InputDecoration(
                                                hintText:
                                                    'Type your message...',
                                                hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 202, 254, 72),
                                                ),
                                                border: InputBorder.none,
                                              ),
                                              style: const TextStyle(
                                                color: Color.fromARGB(255, 202,
                                                    254, 72), // Text color
                                              ),
                                              onSubmitted: (String value) {
                                                String userMessage =
                                                    messageController.text;
                                                if (userMessage.isNotEmpty) {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (_) =>
                                                          const ChatSection(),
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            String userMessage =
                                                messageController.text;
                                            if (userMessage.isNotEmpty) {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (_) =>
                                                      const ChatSection(),
                                                ),
                                              );
                                            }
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 202, 254, 72),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: const Icon(
                                                  Icons.arrow_forward,
                                                  color: Color.fromARGB(
                                                      255, 93, 95, 87)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 42,
                  height: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 80, 84, 71),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Text(
                    '?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 202, 254, 72),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/hoverable_button.dart';
import 'package:myapp_esame/src/presentation/home/widgets/message_bubble.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_user.dart';

class ChatSectionWidget extends StatelessWidget {
  const ChatSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {
        'type': 'user',
        'message': 'ciao',
      },
      {
        'type': 'assistant',
        'message': 'ciao a te',
      }
    ];
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: MediaQuery.of(context).size.width *
              0.6, // 70% of the parent section
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                color: const Color.fromARGB(255, 80, 84, 71),
              )),
              Column(
                children: [
                  if (MediaQuery.sizeOf(context).width <= 600)
                    GestureDetector(
                        onTap: () {
                          if (!Scaffold.of(context).isDrawerOpen) {
                            Scaffold.of(context).openDrawer();
                          }
                        },
                        child: const Icon(Icons.menu)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [HoverableButton()]),
                        Row(
                          children: [
                            Column(
                              children: messages
                                  .map((e) => e['type'] == 'user'
                                      ? MessageUserWidget(
                                          label: e['message'] as String)
                                      : MessageAIWidget(
                                          label: e['message'] as String))
                                  .toList(),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: MessageBubble(),
                        ),
                        const SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  alignment: Alignment.center,
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 202, 254, 72)),
                  child: const Text(
                    '?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 80, 84, 71),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

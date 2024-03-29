import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp_esame/src/data/models/message.dart';
import 'package:myapp_esame/src/presentation/home/blocs/chat_cubit.dart';
import 'package:myapp_esame/src/presentation/home/widgets/hoverable_button.dart';
import 'package:myapp_esame/src/presentation/home/widgets/main_section.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_user.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit()..loadMessages(),
      child: const _ChatSection(),
    );
  }
}

class _ChatSection extends StatefulWidget {
  const _ChatSection();

  @override
  _ChatSectionState createState() => _ChatSectionState();
}

class _ChatSectionState extends State<_ChatSection> {
  TextEditingController messageController = TextEditingController();
  bool isAddingMessage = false;

  void _debouncedInsert(String message) {
    if (!isAddingMessage) {
      isAddingMessage = true;
      context.read<ChatCubit>().insert(message);
      messageController.clear(); // Clear the text field after sending
      Future.delayed(const Duration(seconds: 1), () {
        isAddingMessage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(builder: (context, state) {
      if (state is ChatLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is ChatError) {
        return Center(
          child: Text(state.error),
        );
      }

      if (state is ChatLoaded) {
        if (state.messages.isEmpty) {
          return MainSection();
        }
        final double screenWidth = MediaQuery.of(context).size.width;
        screenWidth * 0.1;

        return ColoredBox(
          color: const Color.fromARGB(255, 93, 95, 87),
          child: Stack(
            children: [
              if (MediaQuery.sizeOf(context).width <= 600)
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('has drawer ${Scaffold.of(context).hasDrawer}');
                        if (!Scaffold.of(context).isDrawerOpen) {
                          Scaffold.of(context).openDrawer();
                        }
                      },
                      child: const Icon(Icons.menu),
                    ),
                  ],
                ),
              const Positioned(
                top: 20,
                left: 20,
                child:
                    HoverableButton(), // Replace HoverableButton with your actual widget
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 80.0,
                  bottom: 20.0,
                  left: 200.0,
                  right: 200.0,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            for (final message in state.messages)
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom:
                                        16.0), // Adjust the padding as needed
                                child: message is MessageAI
                                    ? MessageAIWidget(label: message.content)
                                    : MessageUserWidget(label: message.content),
                              ),
                          ],
                        ),
                      ),
                      if (state.messageLoading)
                        const CircularProgressIndicator(),
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(
                                  255, 93, 95, 87), // Adjust the shadow color
                              spreadRadius: 1, // Adjust the spread radius
                              blurRadius: 10, // Adjust the blur radius
                              offset: Offset(0, 0), // Adjust the offset
                            ),
                          ],
                          color: const Color.fromARGB(255, 93, 95, 87),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: const Color.fromARGB(255, 202, 254, 72),
                            width: 0.4,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                  child: TextField(
                                    controller: messageController,
                                    decoration: const InputDecoration(
                                      hintText: 'Type your message...',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 202, 254, 72),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 202, 254,
                                          72), // Change this color to the desired text color
                                    ),
                                    onSubmitted: (String value) {
                                      String userMessage =
                                          messageController.text;
                                      if (userMessage.isNotEmpty) {
                                        _debouncedInsert(userMessage);
                                      }
                                    },
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                String userMessage = messageController.text;
                                if (userMessage.isNotEmpty) {
                                  _debouncedInsert(userMessage);
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 202, 254, 72),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Icon(Icons.arrow_forward,
                                      color: Color.fromARGB(255, 93, 95, 87)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(
                                255, 93, 95, 87), // Adjust the shadow color
                            spreadRadius: 1, // Adjust the spread radius
                            blurRadius: 10, // Adjust the blur radius
                            offset: Offset(0, 0), // Adjust the offset
                          ),
                        ],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 93, 95, 87),
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 202, 254, 72), // Yellow border color
                            width: 0.4, // Border width
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Center(
                          child: Text(
                            '?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromARGB(255, 202, 254, 72)),
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        );
      }

      return const SizedBox.shrink();
    });
  }
}

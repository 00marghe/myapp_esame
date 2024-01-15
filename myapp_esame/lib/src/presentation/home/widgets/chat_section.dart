import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp_esame/src/data/models/message.dart';
import 'package:myapp_esame/src/presentation/home/blocs/chat_cubit.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_user.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit()..loadMessages(),
      child: const Scaffold(
        body: _ChatSection(),
      ),
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
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 80, 84, 71),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    for (final message in state.messages)
                      message is MessageAI
                          ? MessageAIWidget(label: message.content)
                          : MessageUserWidget(label: message.content)
                  ],
                ),
              ),
              TextField(
                controller: messageController,
                decoration: const InputDecoration(
                  hintText: 'Type your message...',
                ),
                onSubmitted: (String value) {
                  String userMessage = messageController.text;
                  if (userMessage.isNotEmpty) {
                    _debouncedInsert(userMessage);
                  }
                },
              ),
              GestureDetector(
                onTap: () {
                  String userMessage = messageController.text;
                  if (userMessage.isNotEmpty) {
                    _debouncedInsert(userMessage);
                  }
                },
                child: const Text('Add'),
              ),
            ],
          ),
        );
      }

      return const SizedBox.shrink();
    });
  }
}

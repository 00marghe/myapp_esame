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
      child: const _ChatSection(),
    );
  }
}

class _ChatSection extends StatelessWidget {
  const _ChatSection();

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
        state.messages;
        return Container(
          color: const Color.fromARGB(255, 80, 84, 71),
          child: Column(
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
              GestureDetector(
                onTap: () => context.read<ChatCubit>().insert('Ciao'),
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

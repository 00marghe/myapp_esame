import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:myapp_esame/src/data/models/message.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(const ChatInitial());

  void loadMessages() {
    emit(const ChatLoading());
    Supabase.instance.client.from('messages').select().then(
        (messages) => emit(
              ChatLoaded(
                messages: messages.map((e) => Message.fromJson(e)).toList(),
                messageLoading: false,
              ),
            ),
        onError: (error) => emit(ChatError(error: error.toString())));
  }

//-> this is the function that sends the message to the chatbot
  void sendMessageToChatGPT(String content) {
    http
        .post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer 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"
      },
      body: jsonEncode({
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            "role": "system",
            "content":
                "You are a helpful assistant" //qui dichiari all'AI qual'è il suo ruolo
          },
          {
            "role": "user",
            "content": content,
          }
        ]
      }),
    )
        .then(
      (res) {
        if (res.statusCode == 200) {
          final map = jsonDecode(utf8.decode(res.bodyBytes));
          final content = map['choices'][0]['message']['content'];
          Supabase.instance.client.from('messages').insert({
            'id': const Uuid().v1(),
            'content': content,
            'from': MessageTypes.ai.name,
          }).then((_) {
            if (state is ChatLoaded) {
              final currentState = state as ChatLoaded;
              final message = MessageAI(content: content);
              emit(ChatLoaded(
                messages: [
                  ...currentState.messages,
                  message,
                ],
                messageLoading: false,
              ));
            }
          }, onError: (error) => emit(ChatError(error: error.toString())));
        } else {
          emit(const ChatError(error: 'Le cose sono andate male'));
        }
      },
      onError: (error) => emit(
        ChatError(error: error.toString()),
      ),
    );
  }

  void insert(String content) {
    Supabase.instance.client.from('messages').insert({
      'id': const Uuid().v1(),
      'content': content,
      'from': MessageTypes.user.name,
    }).then((_) {
      if (state is ChatLoaded) {
        final currentState = state as ChatLoaded;
        final message = MessageUser(content: content);
        emit(ChatLoaded(
            messages: [...currentState.messages, message],
            messageLoading: true));
        sendMessageToChatGPT(content);
      }
    }, onError: (error) => emit(ChatError(error: error.toString())));
  }
}

abstract class ChatState extends Equatable {
  const ChatState();
}

class ChatInitial extends ChatState {
  const ChatInitial();

  @override
  List<Object?> get props => [];
}

class ChatLoading extends ChatState {
  const ChatLoading();

  @override
  List<Object?> get props => [];
}

class ChatLoaded extends ChatState {
  const ChatLoaded({
    required this.messages,
    required this.messageLoading,
  });

  final List<Message> messages;
  final bool messageLoading;
  @override
  List<Object?> get props => [messages, messageLoading];
}

class ChatError extends ChatState {
  const ChatError({
    required this.error,
  });

  final String error;

  @override
  List<Object?> get props => [error];
}

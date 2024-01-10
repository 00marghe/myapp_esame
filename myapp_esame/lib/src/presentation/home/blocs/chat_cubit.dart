import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                  messages: messages.map((e) => Message.fromJson(e)).toList()),
            ),
        onError: (error) => emit(ChatError(error: error.toString())));
  }

  void insert(String content) {
    Supabase.instance.client.from('messages').insert({
      'id': const Uuid().v1(),
      'content': content,
      'from': MessageTypes.user.name,
    }).then((_) {
      if (state is ChatLoaded) {
        final message = MessageUser(content: content);
        emit(
            ChatLoaded(messages: [...(state as ChatLoaded).messages, message]));
      }
    }, onError: (error) => emit(ChatError(error: error.toString())));
    if (state is ChatLoaded) {
      final message = MessageUser(content: content);
      emit(ChatLoaded(messages: [...(state as ChatLoaded).messages, message]));
    }
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
  });

  final List<Message> messages;

  @override
  List<Object?> get props => [messages];
}

class ChatError extends ChatState {
  const ChatError({
    required this.error,
  });

  final String error;

  @override
  List<Object?> get props => [error];
}

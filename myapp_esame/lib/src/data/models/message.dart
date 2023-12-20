enum MessageTypes {
  ai,
  user,
}
//qui vengono enumerati i tipi di messaggio che può assumere

class Message {
  Message({required this.type, required this.content});

  final MessageTypes type;
  final String content;

  static Message fromJson(Map<String, dynamic> json) {
    return json['type'] == MessageTypes.ai.name
        ? MessageAI.fromJson(json)
        : MessageUser.fromJson(json);
  }

  @override
  String toString() => 'Message {type: $type, content: $content }';
}

class MessageAI extends Message {
  MessageAI({
    required String content,
  }) : super(
          content: content,
          type: MessageTypes.ai,
          //qui si richiama il type del messaggio elencato nell'enum MessageTypes
        );

  static MessageAI fromJson(Map<String, dynamic> json) {
    return MessageAI(content: json['content']);
  }
}

class MessageUser extends Message {
  MessageUser({
    required String content,
  }) : super(
          content: content,
          type: MessageTypes.user,
        );

  static MessageUser fromJson(Map<String, dynamic> json) {
    return MessageUser(content: json['content']);
  }
}

import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:myapp_esame/src/presentation/home/widgets/messages/message_user.dart';

class ChatSectionWidget extends StatelessWidget {
  const ChatSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //final messages = ['AI', 'User', 'AI', 'User'];
    //lista di stringhe --> messaggi botta e risposta fra AI e User

//lista dizionari
    final messages = {
      {
        'type': ' user',
        'message': 'ciao',
      },
      {
        'type': ' assistant',
        'message': 'ciao a te',
      }
    };

    return Column(
      children: messages
          .map((e) => e['type'] == 'user'
              ? MessageUserWidget(label: e['message'] as String)
              : MessageAIWidget(label: e['message'] as String))
          .toList(),
    );
    //stesso modo di fare il ciclo

    /*
    return Column(
      children: [
        for (final message in messages)
          //qui dice che che se la prima chiave del dizionario type equivale a user, allora stampa i msg dello user, altrimenti, dell'AI
          message['type'] == 'user'
              ? MessageUserWidget(label: message as String)
              : MessageAIWidget(label: message as String),
        //ciclo che itera sulla lista di stringhe e stampa uno ad uno i componenti della lista (label perché abbiamo messo
        //un placeholder nei message widget )
      ],
    ); */
  }
}

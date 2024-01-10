import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/chat_section.dart';
import 'package:myapp_esame/src/presentation/home/widgets/sidebar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer -> menu laterale a scomparsa, che deve comparire quando clicchiamo l'icona dell'hamburger menu su mobile
      //abbiamo definito un GestureDetectore in main_section
      //apre la Sidebar quando viene clickata l'icona
      drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: const Sidebar()),
      body: LayoutBuilder(builder: (context, constraints) {
        final isMobile = constraints.maxWidth <= 600;
        return Row(
          children: [
            if (!isMobile)
              const SizedBox(width: 300, child: Sidebar())
            else
              const Sidebar(),
            //il punto esclamativo ci dice che se NON È MOBILE allora deve mostrare la Sidebar
            //Sidebar
            //Visibility(visible: !isMobile,child: const Sidebar(),), -> questo è un altro modo per dirgli di levare la Sidebar quando diventa mobile

            const Expanded(child: ChatSection()),
          ],
        );
      }),
    );
  }
}

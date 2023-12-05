import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/auth/widgets/form_section.dart';
import 'package:myapp_esame/src/presentation/auth/widgets/hero_section.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //flex e la direzione dell'asse, per il responsive per quando non sappiamo che direzione prende se orizzontale o verticale
      //il flex -> Wrap with Builder - il builder esegue una funzione
      //al posto di builder -> LayoutBuilder
      body: LayoutBuilder(builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 1000;
        print('width: ${constraints.maxWidth}');
        print('isDesktop: $isDesktop');
        //stampa sul terminale la larghezza attuale dello schermo e ti dice se isDesktop al momento è true or false
        //se la larghezza è maggiore di 1000px allora isDesktop
        return Flex(
          direction: isDesktop ? Axis.horizontal : Axis.vertical,
          //se isDesktop allora l'asse è orizzontale altrimenti verranno mostrati sull'asse verticale
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //.stretch serve per far estendere il box giallo quando non è isdesktop
          children: const [
            HeroSection(),
            FormSection(),
          ],
          //serve il const così che quelle due sezioni figlie cambiano solo al cambiare delle dimensioni dello schermo, ma non vengono refreshate se le dimensioni rimangono uguali
        );
      }),
    );
  }
}

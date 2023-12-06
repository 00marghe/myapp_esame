import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Stateless widget va convertito into Stateful Widget (selezionare lo statelesswidget command e punto e convertire)
class HoverableButton extends StatefulWidget {
  const HoverableButton({super.key});

  @override
  State<HoverableButton> createState() => _HoverableButtonState();
}

//da class in giù si parla solo ed esclusivamente di UI
class _HoverableButtonState extends State<HoverableButton> {
  //definizione variabile
  //TUTTE le variabili che devono cambiare qualcosa di estetico nella UI devono trovarsi all'interno di class
  var isHovered = false;
  @override
  Widget build(BuildContext context) {
    //Widget MouseRegion capisce se l'utente ha il mouse sopra al widget figlio
    return MouseRegion(
      onEnter: (e) {
        print('On enter');
        setState(
          () {
            isHovered = true;
          },
        );
        print(isHovered);
      },
      //definire che la variabile deve assumere determinati valori in determinate circostanze
      onExit: (e) {
        print('On exit');
        setState(
          () {
            isHovered = false;
          },
        );
        print(isHovered);
      },
      //Animated Container x mettere elementi di animazione tipo easy in all'hover
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          // significa se ? è hovered allora il colore è grigio altrimenti : trasparente
          color: isHovered ? const Color(0xFFf1f1f1) : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chat GPT 4'),
            SizedBox(
              width: 8,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}

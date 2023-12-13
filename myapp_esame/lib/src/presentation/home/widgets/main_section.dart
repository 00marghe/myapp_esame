import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/hoverable_button.dart';
import 'package:myapp_esame/src/presentation/home/widgets/suggestion_button.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          //QUI abbiamo messo un'altra column che contiene la column principale, così che l'icona che compare con il mobile non va a spostare il resto, ma prende il suo spazio , --> però guarda sotto -> la column che contiene il resto con la main section deve essere wrappata in un Expanded per indicare che deve prendere tutto lo spazio disponibile nel resto della colonna (--> sennò si annulla lo space between)
          Column(
            children: [
              ///qui gli stiamo dicento che se è mobile deve mostrare un'icona altrimenti un SizedBox vuoto, perché la Sidebar l'abbiamo già dichiarata (nel caso sia desktop) nella Home
              /*LayoutBuilder(
                    builder: (context, constraints) {
                      final isMobile = constraints.maxWidth <= 600;
                      if (isMobile) {
                        return const Icon(Icons.menu);
                      }
                      return const SizedBox();
                    },
                  ),*/
              //in questo caso abbiamo usato questa mediaQuery per far riferire il <=600 alla grandezza del desktop e non della mainsection, altrimenti l'icona comparirebbe quando la Sidebar ancora è visibile

              if (MediaQuery.sizeOf(context).width <= 600)
                //OnTab -> sia col mouse che con le dite
                // se viene cliccata l'icona deve essere aperto un menu
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!Scaffold.of(context).isDrawerOpen) {
                          Scaffold.of(context).openDrawer();
                        }
                      },
                      child: const Icon(Icons.menu),
                    ),
                  ],
                ),
              //L'expanded serve a mantenere lo space between corretto fra gli elementi
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: HoverableButton()),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              border: Border.all(
                                color: const Color.fromARGB(255, 180, 180, 180),
                              )),
                          child: Center(
                            child: Image.asset(
                              'assets/openai-logo.png',
                              width: 48,
                              height: 48,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Text(
                          'How can I help you today?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // Make the text bold
                            fontSize: 18, // Adjust the font size as needed
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 42),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SuggestionButton(
                                  title: 'Ciao',
                                  description: 'Ciaociaociaociaociao'),
                              SizedBox(width: 18),
                              SuggestionButton(
                                  title: 'Hallo', description: 'Sono inutile'),
                            ], // Closing 1st Parenthesis for Row
                          ),
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SuggestionButton(
                                  title: 'Bella',
                                  description: 'Descrizioneeee'),
                              SizedBox(width: 18),
                              SuggestionButton(
                                title: 'Title',
                                description: 'Descrizioneeee1234567',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //Abbiamo messo uno Stack all'inizio per posizionare questo bottone in avanti sull'asse Z
          //Positioned serve per fissare un oggetto in un'area
          //Quando si vuole fare uno Stack bisogna stare attenti a wrappare solo l'area di interesse con lo Stack
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              width: 42,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Text(
                '?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

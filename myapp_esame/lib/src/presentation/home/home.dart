import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/main_section.dart';
import 'package:myapp_esame/src/presentation/home/widgets/sidebar.dart';
import 'package:myapp_esame/src/presentation/home/widgets/suggestion_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        //Sidebar
        Sidebar(),

        MainSection(),

        SuggestionButton(title: 'Ciao')
      ],
    ));
  }
}

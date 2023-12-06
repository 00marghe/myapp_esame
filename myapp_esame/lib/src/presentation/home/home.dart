import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/sidebar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        //Sidebar
        Sidebar(),
      ],
    ));
  }
}

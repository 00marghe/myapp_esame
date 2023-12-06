import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/widgets/hoverable_button.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const HoverableButton(),
          Column(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
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
              const Text('How can I help you today?'),
            ],
          )
        ],
      ),
    );
  }
}

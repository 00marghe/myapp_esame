import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.label});

  //stiamo dichiarando che ci sarà una variabile per poter cambiare i testi del widget bottone in ogni pagina
  //abbiamo deciso che le variabili si chiameranno con 'label'

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(77, 75, 245, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

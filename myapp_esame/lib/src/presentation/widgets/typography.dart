import 'package:flutter/material.dart';
import 'package:myapp_esame/src/theme.dart';

class TH1 extends StatelessWidget {
  const TH1(this.label, {super.key, this.color});

//TH1 è la cosa che va scritta al posto di text tipo
//TH1('ciao)
// -> ciao è il label

  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Text(label, style: theme.titleTextStyle.copyWith(color: color));
  }
}

//color è un parametro opzionale, quindi non è obbligatorio metterlo

// style: theme.titleTextStyle -> questo è il modo per dire che vogliamo usare il titleTextStyle che abbiamo definito in theme.dart
// vanno tolti i text style

class TParagraph extends StatelessWidget {
  const TParagraph(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Text(
      label,
      style: theme.paragraphTextStyle,
    );
  }
}

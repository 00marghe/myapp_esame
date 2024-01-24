import 'package:flutter/widgets.dart';
import 'package:myapp_esame/src/presentation/widgets/grid.dart';

BorderRadius br(double radius) => BorderRadius.circular(radius);

//br è un metodo che abbiamo definito noi, che prende in input un double e restituisce un BorderRadius.circular(radius)
//sono degli shortcut definite da noi
//in questo caso abbiamo definito solo br, ma possiamo definirne quante ne vogliamo

BorderRadius get brM => BorderRadius.circular(Grid.medium);

//get brM -> questo è un altro shortcut che abbiamo definito noi
//get brM è uguale a BorderRadius.circular(Grid.medium)
//Grid.medium è una size che abbiamo definito in grid.dart

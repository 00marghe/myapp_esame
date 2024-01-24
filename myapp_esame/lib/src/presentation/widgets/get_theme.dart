import 'package:flutter/material.dart';
import 'package:myapp_esame/src/theme.dart';

AppTheme getTheme(BuildContext e) {
  return Theme.of(e).extension<AppTheme>()!;
} 

//getTheme è un metodo che abbiamo definito noi
//getTheme prende in input un BuildContext e restituisce un AppTheme
//getTheme è uguale a Theme.of(e).extension<AppTheme>()!
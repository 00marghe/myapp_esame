import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:myapp_esame/src/presentation/home/home.dart';
import 'package:myapp_esame/src/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://vjwizainvmvbbbsldhpu.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZqd2l6YWludm12YmJic2xkaHB1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ4ODYxMDksImV4cCI6MjAyMDQ2MjEwOX0.X1X5iBA9CS5djxBsWgBGK3nnVGkZfISga9VsyelCaF8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          extensions: <ThemeExtension<dynamic>>[lightTheme],
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          extensions: <ThemeExtension<dynamic>>[darkTheme],
        ),
        initial: AdaptiveThemeMode.dark,
        builder: (lightTheme, darkTheme) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: lightTheme,
            darkTheme: darkTheme,
            home: const HomeView(),
          );
        });
  }
}

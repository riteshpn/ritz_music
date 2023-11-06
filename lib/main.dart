import 'package:flutter/material.dart';
import 'package:ritz_player/config/theme.dart';
import 'package:ritz_player/pages/song_page.dart';
import 'package:ritz_player/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const SongPage(),
    );
  }
}
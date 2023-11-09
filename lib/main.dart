import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritz_player/config/theme.dart';
import 'package:ritz_player/pages/playsongpage.dart';
import 'package:ritz_player/pages/song_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const SongPage(),
    );
  }
}

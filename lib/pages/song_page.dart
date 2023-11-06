import 'package:flutter/material.dart';
import 'package:ritz_player/componets/song_pageheader.dart';
import 'package:ritz_player/componets/trendingsongslider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            SongPageHaeder(),
            SizedBox(height: 20),
            TrendingSongSlider(),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:ritz_player/componets/song_pageheader.dart';
import 'package:ritz_player/componets/songtile.dart';
import 'package:ritz_player/componets/trendingsongslider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              SongPageHaeder(),
              SizedBox(height: 20),
              TrendingSongSlider(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Cloud Song',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    'Device Song',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SongTile(),
              SongTile(),
              SongTile(),
              SongTile(),
            ],
          ),
        ),
      ),
    ));
  }
}

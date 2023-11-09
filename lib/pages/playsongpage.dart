import 'package:flutter/material.dart';
import 'package:ritz_player/componets/playsongheaderbutton.dart';
import 'package:ritz_player/componets/songandvolume.dart';
import 'package:ritz_player/componets/songcontrollerbutton.dart';
import 'package:ritz_player/componets/songsDetails.dart';


class PlaySongPage extends StatelessWidget {
  const PlaySongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              PlaySongHeaderButton(),
              SizedBox(height: 10),
              SongAndVolume(),
              SizedBox(height: 40),
              SongDetails(),
              SizedBox(height: 10),
              Spacer(),
              SongsControllerButtons()
            ],
          ),
        ),
      ),
    );
  }
}

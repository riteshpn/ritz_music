import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritz_player/componets/song_pageheader.dart';
import 'package:ritz_player/componets/songtile.dart';
import 'package:ritz_player/componets/trendingsongslider.dart';
import 'package:ritz_player/config/colors.dart';
import 'package:ritz_player/controller/songdatacontrolller.dart';
import 'package:ritz_player/controller/songplayercontroller.dart';
import 'package:ritz_player/pages/playsongpage.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    SongPlayerController songPlayerController = Get.put(SongPlayerController());

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const SongPageHaeder(),
              const SizedBox(height: 20),
              const TrendingSongSlider(),
              const SizedBox(height: 20),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        songDataController.isDeviceSong.value = false;
                      },
                      child: Text('Cloud Song',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: songDataController.isDeviceSong.value
                                        ? labelColor
                                        : primaryColor,
                                  )),
                    ),
                    InkWell(
                      onTap: () {
                        songDataController.isDeviceSong.value = true;
                      },
                      child: Text('Device Song',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: songDataController.isDeviceSong.value
                                        ? primaryColor
                                        : labelColor,
                                  )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() => songDataController.isDeviceSong.value
                  ? Column(
                      children: songDataController.localSongList.value
                          .map((e) => SongTile(
                                onPress: () {
                                  songPlayerController.playLocalAudio(e);
                                  songDataController
                                      .findCurrentSongPlayingIndex(e.id);
                                  Get.to(PlaySongPage());
                                },
                                songName: e.title,
                              ))
                          .toList())
                  : const Column(
                      children: [],
                    ))
            ],
          ),
        ),
      ),
    ));
  }
}

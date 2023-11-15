import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongPlayerController extends GetxController {
  final player = AudioPlayer();
  RxBool isPlaying = false.obs;
  RxString currentTime = "0".obs;
  RxString totalTime = "0".obs;
  RxDouble sliderValue = 0.0.obs;
  RxDouble sliderMaxValue = 0.0.obs;
  RxString songTitle = "".obs;
  RxString songArtist = "".obs;
  RxBool isLoop = false.obs;
  RxBool isShuffle = false.obs;
  RxDouble volumeLavel = 0.2.obs;






  void playLocalAudio(SongModel song) async {
    songTitle.value = song.title;
    songArtist.value = song.artist!;

    await player.setAudioSource(
      AudioSource.uri(
        Uri.parse(song.data),
      ),
    );
    player.play();
    updatePostion();
    isPlaying.value = true;
  }

  void changeVolume(double volume){
    volumeLavel.value = volume;
    player.setVolume(volumeLavel.value);
    print(volumeLavel.value);
  }



  void setLoopSong() async {
    if (isLoop.value) {
      await player.setLoopMode(LoopMode.off);
    } else {
      await player.setLoopMode(LoopMode.one);
    }
    isLoop.value = !isLoop.value;
  }

  void playRandomSong() async {
    if (isShuffle.value) {
      await player.setShuffleModeEnabled(false);
    } else {
      await player.setShuffleModeEnabled(true);
    }
    isShuffle.value = !isShuffle.value;
  }

  void resumePalying() async {
    isPlaying.value = true;
    await player.play();
  }

  void pausePlaying() async {
    isPlaying.value = false;
    await player.pause();
  }

  void changeSongSlider(Duration position) {
    player.seek(position);
  }

  void updatePostion() async {
    try {
      player.durationStream.listen((d) {
        totalTime.value = d.toString().split(".")[0];
        sliderMaxValue.value = d!.inSeconds.toDouble();
      });
      player.positionStream.listen((p) {
        currentTime.value = p.toString().split(".")[0];
        sliderValue.value = p.inSeconds.toDouble();
      });
    } catch (e) {
      print(e);
    }
  }

  // void changeDurationToSeconds(seconds){
  //   var duration = Duration(seconds: seconds);
  //   player.seek(duration);
  // }
}

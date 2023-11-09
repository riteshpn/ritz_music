import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ritz_player/config/colors.dart';
import 'package:ritz_player/controller/songplayercontroller.dart';

class SongsControllerButtons extends StatelessWidget {
  const SongsControllerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('02:34'),
            Text("/"),
            Text(
              '02:22',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/back.svg", width: 25),
            SizedBox(width: 40),
            Obx(
              () => songPlayerController.isPlaying.value
                  ? InkWell(
                    onTap: (){
                      songPlayerController.pausePlaying();
                    },
                    child: Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/pause.svg",
                              width: 25),
                        ),
                      ),
                  )
                  : InkWell(
                    onTap: (){
                      songPlayerController.resumePalying();
                    },
                    child: Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/play.svg",
                              width: 25),
                        ),
                      ),
                  ),
            ),
            SizedBox(width: 40),
            SvgPicture.asset("assets/icons/next.svg", width: 25),
          ],
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset("assets/icons/suffle.svg", width: 25),
            SvgPicture.asset("assets/icons/repeat.svg", width: 25),
            SvgPicture.asset("assets/icons/songbook.svg", width: 25),
            SvgPicture.asset("assets/icons/heart.svg", width: 25),
          ],
        )
      ],
    );
  }
}

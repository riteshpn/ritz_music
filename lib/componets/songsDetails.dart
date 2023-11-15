import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ritz_player/controller/songplayercontroller.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/play_outline.svg",
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "210 plays",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child: Obx(
              () => Text(
                "${songPlayerController.songTitle.value}",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 1,
              ),
            )),
            Row(
              children: [
                // SvgPicture.asset(
                //   "assets/icons/heart.svg",
                // ),
                // const SizedBox(
                //   width: 10,
                // ),
                SvgPicture.asset(
                  "assets/icons/download.svg",
                  width: 25,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${songPlayerController.songArtist.value}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}

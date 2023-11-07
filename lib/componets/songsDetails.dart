import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
            Text(
              "Dhaagon Se Baandhaa",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Arijit Singh",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritz_player/config/colors.dart';
import 'package:ritz_player/controller/songplayercontroller.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SongAndVolume extends StatefulWidget {
  const SongAndVolume({
    super.key,
  });

  @override
  State<SongAndVolume> createState() => _SongAndVolumeState();
}

class _SongAndVolumeState extends State<SongAndVolume> {
  var value = 30.0;
  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Obx(() => SfRadialGauge(
          animationDuration: 1,
          enableLoadingAnimation: true,
          axes: [
            RadialAxis(
              useRangeColorForAxis: true,
              startAngle: 0,
              endAngle: 180,
              canRotateLabels: false,
              interval: 10,
              isInversed: false,
              maximum: 1,
              minimum: 0,
              showAxisLine: true,
              showLabels: false,
              showTicks: true,
              ranges: [
                GaugeRange(
                  startValue: 0,
                  endValue: songPlayerController.volumeLavel.value,
                  color: primaryColor,
                ),
              ],
              pointers: [
                MarkerPointer(
                  color: primaryColor,
                  value: songPlayerController.volumeLavel.value,
                  onValueChanged: (valuee) {
                    songPlayerController.changeVolume(valuee);
                  },
                  enableAnimation: true,
                  enableDragging: true,
                  markerType: MarkerType.circle,
                  markerWidth: 20,
                  markerHeight: 20,
                )
              ],
              annotations: [
                GaugeAnnotation(
                    horizontalAlignment: GaugeAlignment.center,
                    widget: Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: divColor,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/cover.jpg"),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}

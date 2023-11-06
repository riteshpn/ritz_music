import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ritz_player/config/colors.dart';

class TrendingSongSlider extends StatelessWidget {
  const TrendingSongSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItem = [
      Container(
        height: 300,
        decoration: BoxDecoration(
            color: divColor, borderRadius: BorderRadius.circular(30)),
      )
    ];
    return CarouselSlider(
        items: sliderItem,
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, value) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}

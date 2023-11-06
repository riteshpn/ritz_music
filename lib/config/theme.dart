import 'package:flutter/material.dart';
import 'package:ritz_player/config/colors.dart';

var darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: bgColor,
      primary: primaryColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: "Poopins",
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poopins",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poopins",
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: labelColor,
      ),
      labelSmall: TextStyle(
        fontFamily: "Poopins",
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: labelColor,
      ),
      labelMedium: TextStyle(
        fontFamily: "Poopins",
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: labelColor,
      ),
    ));

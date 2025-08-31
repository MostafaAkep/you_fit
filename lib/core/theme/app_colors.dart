import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xFF222222);
  static const Color mainBackgroundColor = Color(0xff121212);
  static const Color navBarColor = Color(0xff1A1919);
  static const Color grey = Color(0xffBFBFBF);
  static const Color columnBar = Color(0xff1A1919);
  static const Color yellowGradient = Color(0xFFFFE53B);
  static const Color yellow = Color(0xFFFFE53B);
  static const Color greenGradient = Color(0xFFC8FE3B);
  static const LinearGradient yellowToGreenGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      yellowGradient,
      greenGradient,
    ],
  );
  static const List<Color> columnGradientColors = [
    yellowGradient,
    greenGradient,
    columnBar,
  ];
}

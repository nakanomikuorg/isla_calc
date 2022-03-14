import 'package:flutter/material.dart';

class ThemeInfo {
  static const blurSigma = 8.0;
  static const _fontFamily = 'Harmony';
  static const _seedColor = Colors.pink;

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: _fontFamily,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
      ),
    );
  }

  static ThemeData getDarkThemeData() {
    return ThemeData(
      fontFamily: _fontFamily,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
        brightness: Brightness.dark,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ThemeInfo {
  static const blurSigma = 8.0;
  static const int defaultThemeMode = 0;
  static const bool defaultIsGaussianBlur = true;
  static const Color defaultColor = Colors.blue;
  static const _fontFamily = 'Harmony';

  static ThemeData getThemeData(
    BuildContext context,
    Color seedColor,
  ) {
    return ThemeData(
      fontFamily: _fontFamily,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
      ),
    );
  }

  static ThemeData getDarkThemeData(
    BuildContext context,
    Color seedColor,
  ) {
    return ThemeData(
      fontFamily: _fontFamily,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.dark,
      ),
    );
  }
}

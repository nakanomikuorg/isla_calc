import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../themes/theme_info.dart';

class GlobalSettingsData {
  static Future<bool> getIsGaussianBlur() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isGaussianBlur') ?? ThemeInfo.defaultIsGaussianBlur;
  }

  static void setIsGaussianBlur(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isGaussianBlur', value);
  }

  static Future<Color> getColor() async {
    final prefs = await SharedPreferences.getInstance();
    var colorRed = prefs.getInt('color-red') ?? ThemeInfo.defaultColor.red;
    var colorGreen =
        prefs.getInt('color-green') ?? ThemeInfo.defaultColor.green;
    var colorBlue = prefs.getInt('color-blue') ?? ThemeInfo.defaultColor.blue;

    return Color.fromRGBO(colorRed, colorGreen, colorBlue, 0.0);
  }

  static void setColor(Color value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('color-red', value.red);
    prefs.setInt('color-green', value.green);
    prefs.setInt('color-blue', value.blue);
  }
}

import 'package:flutter/material.dart';
import 'package:isla_calc/themes/theme_info.dart';

import '../../global_settings_data.dart';

class ThemeModel extends ChangeNotifier {
  bool _isGaussianBlur = ThemeInfo.defaultIsGaussianBlur;
  Color _color = ThemeInfo.defaultColor;

  get isGaussianBlur => _isGaussianBlur;

  get color => _color;

  void changeGaussianBlur(bool value) {
    if (_isGaussianBlur != value) {
      _isGaussianBlur = value;
      GlobalSettingsData.setIsGaussianBlur(value);

      notifyListeners();
    }
  }

  void changeColor(Color value) {
    if (_color != value) {
      _color = value;
      GlobalSettingsData.setColor(value);

      notifyListeners();
    }
  }
}

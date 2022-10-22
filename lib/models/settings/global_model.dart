import 'package:flutter/material.dart';
import 'package:isla_calc/default/theme_info.dart';

import '../../data/settings/global_data.dart';

class GlobalModel extends ChangeNotifier {
  int _themeMode = ThemeInfo.defaultThemeMode;
  bool _isGaussianBlur = ThemeInfo.defaultIsGaussianBlur;
  Color _color = ThemeInfo.defaultColor;

  get themeMode => _themeMode;

  get isGaussianBlur => _isGaussianBlur;

  get color => _color;

  void changeThemeMode(int value) {
    if (_themeMode != value) {
      _themeMode = value;
      GlobalData.setThemeMode(value);

      notifyListeners();
    }
  }

  void changeGaussianBlur(bool value) {
    if (_isGaussianBlur != value) {
      _isGaussianBlur = value;
      GlobalData.setIsGaussianBlur(value);

      notifyListeners();
    }
  }

  void changeColor(Color value) {
    if (_color != value) {
      _color = value;
      GlobalData.setColor(value);

      notifyListeners();
    }
  }
}

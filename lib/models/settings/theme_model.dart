import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  var _isGaussianBlur = false;
  Color _color = Colors.blue;

  get isGaussianBlur => _isGaussianBlur;

  get color => _color;

  void changeGaussianBlur(bool value) {
    if (_isGaussianBlur != value) {
      _isGaussianBlur = value;
      notifyListeners();
    }
  }

  void changeColor(Color value) {
    if (_color != value) {
      _color = value;
      notifyListeners();
    }
  }
}

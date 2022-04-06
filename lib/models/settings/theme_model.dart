import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  var _isGaussianBlur = true;

  get isGaussianBlur => _isGaussianBlur;

  void changeGaussianBlur(bool value) {
    _isGaussianBlur = value;
    notifyListeners();
  }
}

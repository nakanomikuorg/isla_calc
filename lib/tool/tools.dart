import 'dart:math';
import 'dart:ui';

class Tool {
  static final random = Random();

  static bool nextBool() {
    return random.nextBool();
  }

  static String getColorString(Color color) {
    var rStr = color.red.toRadixString(16).padLeft(2, '0');
    var gStr = color.green.toRadixString(16).padLeft(2, '0');
    var bStr = color.blue.toRadixString(16).padLeft(2, '0');
    return '#$rStr$gStr$bStr';
  }
}

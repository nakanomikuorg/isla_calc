import 'dart:math';
import 'dart:ui';

class Tool {
  static final random = Random();

  static bool nextBool() {
    return random.nextBool();
  }

  static String getThemeModeStr(int themeMode) {
    if (themeMode == 0) {
      return "跟随系统";
    } else if (themeMode == 1) {
      return "日间模式";
    } else {
      return "夜间模式";
    }
  }

  static String getColorStr(Color color) {
    var rStr = color.red.toRadixString(16).padLeft(2, '0');
    var gStr = color.green.toRadixString(16).padLeft(2, '0');
    var bStr = color.blue.toRadixString(16).padLeft(2, '0');
    return '#$rStr$gStr$bStr';
  }

  static bool isInt(double value) {
    return value == value.truncateToDouble();
  }

  static String getNumStr(double value) {
    return Tool.isInt(value) ? value.truncate().toString() : value.toString();
  }
}

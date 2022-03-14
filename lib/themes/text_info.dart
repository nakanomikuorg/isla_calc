class TextInfo {
  static const List<String> fontFamilyFallback = <String>['Notoemj'];

  static double getStandardCalcExpDisplayTextSize(String exp) {
    var fontSize = 57.0;

    if (exp.length > 8 && exp.length < 12) {
      fontSize -= (exp.length - 8) * 4;
    } else if (exp.length >= 12) {
      fontSize = 45.0;
    }

    return fontSize;
  }

  static double getStandardCalcAnsDisplayTextSize(String ans) {
    return ans.length <= 8 ? 36 : 24;
  }
}

import 'package:calc_core/calc_core.dart';
import 'package:flutter/material.dart';

class ConvModel extends ChangeNotifier {
  double _originalMetaValue = double.nan;
  String _originalConvToMetaRelationship = '';

  double get originalMetaValue => _originalMetaValue;

  set originalMetaValue(double v) {
    var exp = _originalConvToMetaRelationship.replaceAll('x', '($v)');

    _originalMetaValue = Calc.calcExp(exp).toDouble();
  }

  set originalConvToMetaRelationship(String r) {
    _originalConvToMetaRelationship = r;
  }
}

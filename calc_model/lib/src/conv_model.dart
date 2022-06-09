import 'package:calc_core/calc_core.dart';
import 'package:flutter/material.dart';

class ConvModel extends ChangeNotifier {
  late final String _unitName;
  late final String _unitSymbol;
  late final String _convRelationship;

  ConvModel(this._unitName, this._unitSymbol, this._convRelationship);

  String get convRelationship => _convRelationship;

  String get unitSymbol => _unitSymbol;

  String get unitName => _unitName;

  double getRst(String originalAnsStr) {
    var exp = _convRelationship.replaceAll('x', '($originalAnsStr)');

    return Calc.calcExp(exp).toDouble();
  }
}

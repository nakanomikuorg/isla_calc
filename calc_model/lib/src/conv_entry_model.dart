import 'package:calc_core/calc_core.dart';
import 'package:flutter/material.dart';

class ConvEntryModel extends ChangeNotifier {
  late final String _unitName;
  late final String _unitSymbol;
  late final String _convFromMetaRelationship;
  late final String _convToMetaRelationship;

  ConvEntryModel(
    this._unitName,
    this._unitSymbol,
    this._convFromMetaRelationship,
    this._convToMetaRelationship,
  );

  String get convToMetaRelationship => _convToMetaRelationship;

  String get unitSymbol => _unitSymbol;

  String get unitName => _unitName;

  double getRst(String originalMetaValue) {
    var exp = _convFromMetaRelationship.replaceAll('x', '($originalMetaValue)');

    return Calc.calcExp(exp).toDouble();
  }
}

import 'package:calc_core/calc_core.dart';
import 'package:calc_tool/calc_tool.dart';
import 'package:flutter/material.dart';
import 'package:rational/rational.dart';

class ConvEntryModel extends ChangeNotifier {
  late final String _unitName;
  late final String _unitSymbol;
  late final String _meta2RstRs;
  late final String _original2MetaRs;

  var _rstStr = '';
  Rational? _rst;

  ConvEntryModel(
    this._unitName,
    this._unitSymbol,
    this._meta2RstRs,
    this._original2MetaRs,
  );

  String get original2MetaRs => _original2MetaRs;

  String get unitSymbol => _unitSymbol;

  String get unitName => _unitName;

  String getRst(String metaValue) {
    var exp = _meta2RstRs.replaceAll('x', '($metaValue)');

    try {
      _rst = Calc.calcExp(exp);
      _rstStr = Tool.getNumStr(_rst!.toDouble());
    } catch (e) {
      _rst = null;
      _rstStr = '';
    }

    return _rstStr;
  }
}

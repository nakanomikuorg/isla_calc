import 'package:flutter/material.dart';

import '../../tool/calc/calc.dart';

class CalcModel extends ChangeNotifier {
  static const _operand = <String>{
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
  };
  static const _operator = <String>{
    '(',
    ')',
    '( )',
    'π',
    'e',
    '%',
    '!',
    '^',
    '√',
    '∛',
    'ln',
    'sin',
    'cos',
    'tan',
    'sin⁻¹',
    'cos⁻¹',
    'tan⁻¹',
    '×',
    '÷',
    '+',
    '—',
    '-',
    '−',
  };
  static const _backspace = 'backspace';
  static const _ac = 'AC';
  static const _equal = '=';

  final _expCtl = TextEditingController();
  final _exp = StringBuffer();
  final _expBegin = StringBuffer();
  final _expEnd = StringBuffer();

  var _newExp = '';
  var _currentAns = '';
  var _baseOffset = 0;
  var _extentOffset = 0;
  var _originalExp = '';

  get expCtl => _expCtl;

  get currentAns => _currentAns;

  void responseKey(String v) {
    _baseOffset = _expCtl.selection.baseOffset;
    _extentOffset = _expCtl.selection.extentOffset;

    // 按下退格键且指针在开头，直接返回
    if (v == _backspace && _baseOffset == 0 && _baseOffset == _extentOffset) {
      return;
    }

    _originalExp = _exp.toString();
    int rstOffset;

    _expBegin.clear();
    _expEnd.clear();

    _expEnd.write(
      _originalExp.substring(
        _extentOffset == -1 ? _exp.length : _extentOffset,
        _exp.length,
      ),
    );

    if (v == _backspace) {
      rstOffset = _responseBackspaceKey();
    } else if (v == _ac) {
      rstOffset = _responseACKey();
    } else {
      _expBegin.write(
        _originalExp.substring(
          0,
          _baseOffset == -1 ? _exp.length : _baseOffset,
        ),
      );

      if (_operand.contains(v)) {
        rstOffset = _responseOperandKey(v);
      } else if (_operator.contains(v)) {
        rstOffset = _responseOperatorKey(v);
      } else if (v == _equal) {
        rstOffset = _responseEqualKey();
      } else {
        rstOffset = _baseOffset;
      }
    }

    _newExp = _exp.toString();

    _expCtl.value = _expCtl.value.copyWith(
      text: _newExp,
      selection: TextSelection.fromPosition(
        TextPosition(offset: rstOffset),
      ),
      composing: TextRange.empty,
    );

    try {
      _currentAns = Calc.calcExp(_newExp).toString();
    } catch (e) {
      _currentAns = '';
    }
  }

  int _responseEqualKey() {
    return -1;
  }

  int _responseOperatorKey(String v) {
    _exp
      ..clear()
      ..write(_expBegin.toString())
      ..write(v)
      ..write(_expEnd.toString());

    return _baseOffset + v.length;
  }

  int _responseOperandKey(String v) {
    _exp
      ..clear()
      ..write(_expBegin.toString())
      ..write(v)
      ..write(_expEnd.toString());

    return _baseOffset + 1;
  }

  int _responseACKey() {
    _exp.clear();

    return 0;
  }

  int _responseBackspaceKey() {
    int rstOffset;

    if (_baseOffset == _extentOffset) {
      // 指针
      _expBegin.write(
        _originalExp.substring(
          0,
          _baseOffset == -1 ? _exp.length - 1 : _baseOffset - 1,
        ),
      );

      rstOffset = _baseOffset - 1;
    } else {
      // 选区
      _expBegin.write(
        _originalExp.substring(
          0,
          _baseOffset,
        ),
      );

      rstOffset = _baseOffset;
    }

    _exp
      ..clear()
      ..write(_expBegin.toString())
      ..write(_expEnd.toString());

    return rstOffset;
  }
}

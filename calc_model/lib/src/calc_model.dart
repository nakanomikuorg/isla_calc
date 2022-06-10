import 'package:calc_core/calc_core.dart';
import 'package:calc_tool/calc_tool.dart';
import 'package:flutter/material.dart';

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

  var _originalExp = '';
  var _newExp = '';
  var _originalAnsStr = '';
  var _originalAns = double.nan;
  var _currentAnsStr = '';
  var _currentAns = double.nan;
  var _hasAns = false;
  var _baseOffset = 0;
  var _extentOffset = 0;

  get expCtl => _expCtl;

  get newExp => _newExp;

  get originalExp => _originalExp;

  get originalAns => _originalAns;

  get originalAnsStr => _originalAnsStr;

  get currentAnsStr => _currentAnsStr;

  get currentAns => _currentAns;

  get hasAns => _hasAns;

  void responseKey(String v) {
    _baseOffset =
        _expCtl.selection.baseOffset != -1 ? _expCtl.selection.baseOffset : 0;
    _extentOffset = _expCtl.selection.extentOffset != -1
        ? _expCtl.selection.extentOffset
        : _newExp.length;

    // 按下退格键且指针在开头，直接返回
    if (v == _backspace && _baseOffset == 0 && _baseOffset == _extentOffset) {
      return;
    }

    int rstOffset;

    _originalExp = _newExp;
    _exp.clear();
    _expBegin.clear();
    _expEnd.clear();

    _expEnd.write(
      _originalExp.substring(
        _extentOffset,
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
          _baseOffset,
        ),
      );

      if (v == _equal) {
        rstOffset = _responseEqualKey();
      } else if (_operand.contains(v)) {
        rstOffset = _responseOperandKey(v);
      } else if (_operator.contains(v)) {
        rstOffset = _responseOperatorKey(v);
      } else {
        rstOffset = _baseOffset;
      }
    }

    _newExp = _exp.toString();
    _expCtl.value = _expCtl.value.copyWith(
      text: _newExp,
      selection: TextSelection.fromPosition(
        TextPosition(
          offset: rstOffset,
        ),
      ),
      composing: TextRange.empty,
    );

    try {
      _currentAns = Calc.calcExp(_newExp).toDouble();
      _originalAns = _currentAns;

      _currentAnsStr = Tool.getNumStr(_currentAns);
      _originalAnsStr = _currentAnsStr;

      if (_newExp == _currentAnsStr) {
        _currentAnsStr = '';
      }

      _hasAns = true;
    } catch (e) {
      _currentAns = double.nan;
      _currentAnsStr = '';

      _hasAns = false;
    }

    notifyListeners();
  }

  int _responseEqualKey() {
    if (_currentAnsStr != '') {
      _exp.write(
        _currentAnsStr,
      );

      return _currentAnsStr.length;
    } else {
      _exp.write(
        _originalExp,
      );

      return _extentOffset;
    }
  }

  int _responseOperatorKey(String v) {
    _exp
      ..write(_expBegin.toString())
      ..write(v)
      ..write(_expEnd.toString());

    return _baseOffset + v.length;
  }

  int _responseOperandKey(String v) {
    _exp
      ..write(_expBegin.toString())
      ..write(v)
      ..write(_expEnd.toString());

    return _baseOffset + v.length;
  }

  int _responseACKey() {
    return 0;
  }

  int _responseBackspaceKey() {
    int rstOffset;

    if (_baseOffset == _extentOffset) {
      // 选择的区域为指针
      _expBegin.write(
        _originalExp.substring(
          0,
          _baseOffset - 1,
        ),
      );

      rstOffset = _baseOffset - 1;
    } else {
      // 选择的区域为选区
      _expBegin.write(
        _originalExp.substring(
          0,
          _baseOffset,
        ),
      );

      rstOffset = _baseOffset;
    }

    _exp
      ..write(_expBegin.toString())
      ..write(_expEnd.toString());

    return rstOffset;
  }
}

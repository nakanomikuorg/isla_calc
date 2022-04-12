import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/common/calc_model.dart';
import '../../themes/text_info.dart';
import '../../tool/calc/calc.dart';
import '../../widgets/commons/standard_calc/standard_calc_display.dart';
import '../../widgets/commons/standard_calc/standard_calc_panel.dart';
import '../../widgets/general/calc/calc_body_content.dart';
import '../../widgets/general/page/general_page.dart';

class StandardCalcPage extends StatelessWidget {
  const StandardCalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return CalcModel();
      },
      child: const GeneralPage(
        appBarTitle: '标准计算器',
        iconData: Icons.more_vert_rounded,
        body: StandardCalcBodyContent(),
        extendBodyBehindAppBar: false,
      ),
    );
  }
}

class StandardCalcBodyContent extends StatefulWidget {
  const StandardCalcBodyContent({Key? key}) : super(key: key);

  @override
  State<StandardCalcBodyContent> createState() =>
      _StandardCalcBodyContentState();
}

class _StandardCalcBodyContentState extends State<StandardCalcBodyContent> {
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

  final _expController = TextEditingController();
  final _exp = StringBuffer();
  final _expBegin = StringBuffer();
  final _expEnd = StringBuffer();

  var _newExp = '';
  var _currentAns = '';
  var _baseOffset = 0;
  var _extentOffset = 0;
  var _originalExp = '';

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

  void _responseKey(String v) {
    _baseOffset = _expController.selection.baseOffset;
    _extentOffset = _expController.selection.extentOffset;

    // 退格键且指针在开头，直接返回
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

    _expController.value = _expController.value.copyWith(
      text: _newExp,
      selection: TextSelection.fromPosition(
        TextPosition(offset: rstOffset),
      ),
      composing: TextRange.empty,
    );

    setState(() {
      try {
        _currentAns = Calc.calcExp(_newExp).toString();
      } catch (e) {
        _currentAns = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CalcBodyContent(
      display: StandardCalcDisplay(
        _expController,
        _currentAns,
        TextInfo.getStandardCalcExpDisplayTextSize(_newExp),
      ),
      panel: StandardCalcPanel(
        onPressed: _responseKey,
      ),
    );
  }
}

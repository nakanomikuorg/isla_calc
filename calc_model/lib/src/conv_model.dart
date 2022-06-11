import 'package:calc_core/calc_core.dart';
import 'package:flutter/material.dart';
import 'package:rational/rational.dart';

class ConvModel extends ChangeNotifier {
  Rational? _metaValue;
  String _original2MetaRs = '';

  Rational? get metaValue => _metaValue;

  set metaValue(Rational? v) {
    if (v == null) {
      _metaValue = v;
    } else {
      var vs = v.toString();
      var exp = _original2MetaRs.replaceAll('x', '($vs)');
      _metaValue = Calc.tryCalcExp(exp);
    }

    // 当元数据更新后，通知其它单位条目更新
    notifyListeners();
  }

  set originalConvToMetaRelationship(String r) {
    _original2MetaRs = r;
  }
}

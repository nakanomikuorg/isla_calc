import 'package:rational/rational.dart';

import '../history.dart';

class StandardCalcHistory extends History {
  final String infixExp;
  final String reversePolishExp;
  final String? stack;
  final Rational? rst;

  StandardCalcHistory({
    required String remark,
    required DateTime dateTime,
    required this.infixExp,
    required this.reversePolishExp,
    this.stack,
    this.rst,
  }) : super.init(remark, dateTime);
}

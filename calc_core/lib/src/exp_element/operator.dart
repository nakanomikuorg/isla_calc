import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:rational/rational.dart';

import 'exp_element.dart';

/// 抽象运算符类
abstract class Operator implements ExpElement {
  Decimal d(String s) {
    return Decimal.parse(s);
  }

  final String _operator;
  final int _priority;
  final int _numOfParameters;
  final bool _isNextSign;

  static const operators = {
    // 0
    '(': LeftParenthesis(),
    ')': RightParenthesis(),
    // 1
    'π': Pi(),
    'e': EulerNum(),
    // 2
    '%': PercentSign(),
    '!': Factorial(),
    // 3
    '^': Power(),
    '√': SquareRoot(),
    '∛': CubeRoot(),
    'ln': NaturalLog(),
    'sin': Sin(),
    'cos': Cos(),
    'tan': Tan(),
    'sin⁻¹': Asin(),
    'asin': Asin(),
    'cos⁻¹': Acos(),
    'acos': Acos(),
    'tan⁻¹': Atan(),
    'atan': Atan(),
    // 4
    '×': Times(),
    '*': Times(),
    '÷': Divide(),
    '/': Divide(),
    // 5
    '+': Plus(),
    '—': Minus(),
    '-': Minus(),
    '−': Minus(),
  };

  const Operator(
      this._operator, this._priority, this._numOfParameters, this._isNextSign);

  factory Operator.getOperator(String operator) {
    var instance = operators[operator];

    if (instance == null) {
      throw Exception('no such operator');
    } else {
      return instance;
    }
  }

  String get operator => _operator;

  int get priority => _priority;

  int get numOfParameters => _numOfParameters;

  bool get isNextSign => _isNextSign;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Operator &&
          runtimeType == other.runtimeType &&
          _operator == other._operator &&
          _priority == other._priority &&
          _numOfParameters == other._numOfParameters &&
          _isNextSign == other._isNextSign;

  @override
  int get hashCode =>
      _operator.hashCode ^
      _priority.hashCode ^
      _numOfParameters.hashCode ^
      _isNextSign.hashCode;

  @override
  String toString() {
    return _operator;
  }

  Rational calc(List<Rational> operands);
}

/// π
class Pi extends Operator {
  const Pi() : super('π', 1, 0, false);

  @override
  Rational calc(List<Rational> operands) {
    return d(pi.toString()).toRational();
  }
}

/// 自然常数
class EulerNum extends Operator {
  const EulerNum() : super('e', 1, 0, false);

  @override
  Rational calc(List<Rational> operands) {
    return d(e.toString()).toRational();
  }
}

/// 百分号
class PercentSign extends Operator {
  const PercentSign() : super('%', 2, 1, false);

  @override
  Rational calc(List<Rational> operands) {
    return operands.first * d('0.01').toRational();
  }
}

/// 阶乘
class Factorial extends Operator {
  const Factorial() : super('!', 2, 1, false);

  @override
  Rational calc(List<Rational> operands) {
    var value = operands.first;
    if ((value >= d('0').toRational()) && (value.isInteger)) {
      var rst = d('1').toRational();

      for (var i = value.toDouble(); i > 1; i--) {
        rst = rst * d(i.toString()).toRational();
      }

      return rst;
    } else {
      throw Exception('non-negative integer cannot be factorial');
    }
  }
}

/// 乘方
class Power extends Operator {
  const Power() : super('^', 3, 2, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(pow(operands.first.toDouble(), operands[1].toDouble()).toString())
        .toRational();
  }
}

/// 平方根号
class SquareRoot extends Operator {
  const SquareRoot() : super('√', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(sqrt(operands.first.toDouble()).toString()).toRational();
  }
}

/// 立方根号
class CubeRoot extends Operator {
  const CubeRoot() : super('∛', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(pow(operands.first.toDouble(), (d('1') / d('3')).toDouble())
            .toString())
        .toRational();
  }
}

/// 自然对数
class NaturalLog extends Operator {
  const NaturalLog() : super('ln', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(log(operands.first.toDouble()).toString()).toRational();
  }
}

/// 正弦
class Sin extends Operator {
  const Sin() : super('sin', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(sin(operands.first.toDouble()).toString()).toRational();
  }
}

/// 余弦
class Cos extends Operator {
  const Cos() : super('cos', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(cos(operands.first.toDouble()).toString()).toRational();
  }
}

/// 正切
class Tan extends Operator {
  const Tan() : super('tan', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(tan(operands.first.toDouble()).toString()).toRational();
  }
}

/// 反正弦
class Asin extends Operator {
  const Asin() : super('sin⁻¹', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(asin(operands.first.toDouble()).toString()).toRational();
  }
}

/// 反余弦
class Acos extends Operator {
  const Acos() : super('cos⁻¹', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(acos(operands.first.toDouble()).toString()).toRational();
  }
}

/// 反正切
class Atan extends Operator {
  const Atan() : super('tan⁻¹', 3, 1, true);

  @override
  Rational calc(List<Rational> operands) {
    return d(atan(operands.first.toDouble()).toString()).toRational();
  }
}

/// 乘号
class Times extends Operator {
  const Times() : super('×', 4, 2, true);

  @override
  Rational calc(List<Rational> operands) {
    return operands.first * operands[1];
  }
}

/// 除号
class Divide extends Operator {
  const Divide() : super('÷', 4, 2, true);

  @override
  Rational calc(List<Rational> operands) {
    return operands.first / operands[1];
  }
}

/// 加号
class Plus extends Operator {
  const Plus() : super('+', 5, 2, true);

  @override
  Rational calc(List<Rational> operands) {
    return operands.first + operands[1];
  }
}

/// 减号
class Minus extends Operator {
  const Minus() : super('—', 5, 2, true);

  @override
  Rational calc(List<Rational> operands) {
    return operands.first - operands[1];
  }
}

/// 左括号
class LeftParenthesis extends Operator {
  const LeftParenthesis() : super("(", 0, 0, true);

  @override
  Rational calc(List<Rational> operands) {
    throw UnimplementedError();
  }
}

/// 右括号
class RightParenthesis extends Operator {
  const RightParenthesis() : super(")", 0, 0, false);

  @override
  Rational calc(List<Rational> operands) {
    throw UnimplementedError();
  }
}

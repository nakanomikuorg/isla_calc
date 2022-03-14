import 'dart:math';

import 'package:number_precision/number_precision.dart';

import 'exp_element.dart';

/// 抽象运算符类
abstract class Operator implements ExpElement {
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
  String toString() {
    return _operator;
  }

  double calc(List<double> operands);
}

/// π
class Pi extends Operator {
  const Pi() : super('π', 1, 0, false);

  @override
  double calc(List<double> operands) {
    return pi;
  }
}

/// 自然常数
class EulerNum extends Operator {
  const EulerNum() : super('e', 1, 0, false);

  @override
  double calc(List<double> operands) {
    return e;
  }
}

/// 百分号
class PercentSign extends Operator {
  const PercentSign() : super('%', 2, 1, false);

  @override
  double calc(List<double> operands) {
    try {
      return NP.times(operands.first, 0.01).toDouble();
    } on Exception {
      return operands.first * 0.01;
    }
  }
}

/// 阶乘
class Factorial extends Operator {
  const Factorial() : super('!', 2, 1, false);

  @override
  double calc(List<double> operands) {
    var value = operands.first;
    if ((value >= 0) && (value == value.toInt())) {
      var rst = 1.0;

      for (var i = value; i > 1; i--) {
        rst = NP.times(rst, i).toDouble();
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
  double calc(List<double> operands) {
    return pow(operands.first, operands[1]).toDouble();
  }
}

/// 平方根号
class SquareRoot extends Operator {
  const SquareRoot() : super('√', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return sqrt(operands.first);
  }
}

/// 立方根号
class CubeRoot extends Operator {
  const CubeRoot() : super('∛', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return pow(operands.first, NP.divide(1, 3).toDouble()).toDouble();
  }
}

/// 自然对数
class NaturalLog extends Operator {
  const NaturalLog() : super('ln', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return log(operands.first);
  }
}

/// 正弦
class Sin extends Operator {
  const Sin() : super('sin', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return sin(operands.first);
  }
}

/// 余弦
class Cos extends Operator {
  const Cos() : super('cos', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return cos(operands.first);
  }
}

/// 正切
class Tan extends Operator {
  const Tan() : super('tan', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return tan(operands.first);
  }
}

/// 反正弦
class Asin extends Operator {
  const Asin() : super('sin⁻¹', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return asin(operands.first);
  }
}

/// 反余弦
class Acos extends Operator {
  const Acos() : super('cos⁻¹', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return acos(operands.first);
  }
}

/// 反正切
class Atan extends Operator {
  const Atan() : super('tan⁻¹', 3, 1, true);

  @override
  double calc(List<double> operands) {
    return atan(operands.first);
  }
}

/// 乘号
class Times extends Operator {
  const Times() : super('×', 4, 2, true);

  @override
  double calc(List<double> operands) {
    try {
      return NP.times(operands.first, operands[1]).toDouble();
    } on Exception {
      return operands.first * operands[1];
    }
  }
}

/// 除号
class Divide extends Operator {
  const Divide() : super('÷', 4, 2, true);

  @override
  double calc(List<double> operands) {
    try {
      return NP.divide(operands.first, operands[1]).toDouble();
    } on Exception {
      return operands.first / operands[1];
    }
  }
}

/// 加号
class Plus extends Operator {
  const Plus() : super('+', 5, 2, true);

  @override
  double calc(List<double> operands) {
    try {
      return NP.plus(operands.first, operands[1]).toDouble();
    } on Exception {
      return operands.first + operands[1];
    }
  }
}

/// 减号
class Minus extends Operator {
  const Minus() : super('—', 5, 2, true);

  @override
  double calc(List<double> operands) {
    try {
      return NP.minus(operands.first, operands[1]).toDouble();
    } on Exception {
      return operands.first - operands[1];
    }
  }
}

/// 左括号
class LeftParenthesis extends Operator {
  const LeftParenthesis() : super("(", 0, 0, true);

  @override
  double calc(List<double> operands) {
    throw UnimplementedError();
  }
}

/// 右括号
class RightParenthesis extends Operator {
  const RightParenthesis() : super(")", 0, 0, false);

  @override
  double calc(List<double> operands) {
    throw UnimplementedError();
  }
}

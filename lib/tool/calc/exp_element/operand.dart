import 'package:decimal/decimal.dart';
import 'package:isla_calc/tool/calc/exp_element/exp_element.dart';
import 'package:rational/rational.dart';

class Operand implements ExpElement {
  static const operands = <String>{
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

  final bool _isPositive;
  final String _operand;
  late final Rational _value;

  Operand(this._isPositive, this._operand) {
    _value = Rational.parse(_operand);
  }

  Rational get value =>
      (_isPositive
          ? Decimal.parse("1").toRational()
          : Decimal.parse("-1").toRational()) *
      _value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Operand &&
          runtimeType == other.runtimeType &&
          _isPositive == other._isPositive &&
          _operand == other._operand &&
          _value == other._value;

  @override
  int get hashCode =>
      _isPositive.hashCode ^ _operand.hashCode ^ _value.hashCode;

  @override
  String toString() {
    return '$value';
  }
}

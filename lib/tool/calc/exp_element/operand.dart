import 'package:isla_calc/tool/calc/exp_element/exp_element.dart';

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
  late final double _value;

  Operand(this._isPositive, this._operand) {
    _value = double.parse(_operand);
  }

  double get value => (_isPositive ? 1 : -1) * _value;

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

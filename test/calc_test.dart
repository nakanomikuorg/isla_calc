import 'package:calc_core/calc_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var exps = <String>[
    '1% + 10',
    '1 + 1 × 6 + (2 × 2.33 + 66.6) × 88',
    '1 + 1 × 6 + (2 × 2.33)',
    '3^2 + 3',
    '3!',
  ];

  test(
    'calcExp',
    () {
      for (String exp in exps) {
        if (kDebugMode) {
          print('$exp = ${Calc.calcExp(exp)}\n\n');
        }
      }
    },
  );

  test(
    'calcRPE',
    () {
      for (String exp in exps) {
        if (kDebugMode) {
          print('$exps = ${Calc.calcRPE(
            Calc.convertToRPE(
              Calc.parseExp(exp),
            ),
          )}\n\n');
        }
      }
    },
  );

  test(
    'convertToRPE',
    () {
      for (String exp in exps) {
        if (kDebugMode) {
          print('$exp:');
          print('${Calc.convertToRPE(
            Calc.parseExp(exp),
          )}\n');
        }
      }
    },
  );

  test(
    'parseExp',
    () {
      for (String exp in exps) {
        if (kDebugMode) {
          print('$exp:');
          print('${Calc.parseExp(exp)}\n');
        }
      }
    },
  );
}

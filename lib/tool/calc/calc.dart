import 'exp/infix_exp.dart';
import 'exp/reverse_polish_exp.dart';
import 'exp_element/exp_element.dart';
import 'exp_element/operand.dart';
import 'exp_element/operator.dart';

class Calc {
  static double calcExp(String exp) {
    return calcRPE(
      convertToRPE(
        parseExp(exp),
      ),
    );
  }

  static InfixExp parseExp(String exp) {
    exp = exp.replaceAll(' ', '').replaceAll(',', '');

    final ie = InfixExp();
    final numSB = StringBuffer();
    var isSign = true;
    var isPositive = true;
    String s;
    Operator o;
    int oLen;
    String os;

    for (var i = 0; i < exp.length;) {
      s = exp.substring(i, i + 1);

      if (Operand.operands.contains(s)) {
        numSB.write(s);
        isSign = false;

        if (i == exp.length - 1) {
          ie.addExpElement(Operand(isPositive, numSB.toString()));
        }

        i++;
      } else {
        oLen = _getOperatorLen(exp, i);
        os = exp.substring(i, i + oLen);

        if (numSB.length == 0) {
          if (isSign && (s == '-' || s == '+')) {
            if ('-' == s) {
              isPositive = !isPositive;
            }

            isSign = false;
            i++;
          } else {
            o = Operator.getOperator(exp.substring(i, i + oLen));
            ie.addExpElement(
              o,
            );

            isSign = o.isNextSign;
            i += oLen;
          }
        } else {
          ie.addExpElement(
            Operand(
              isPositive,
              numSB.toString(),
            ),
          );
          o = Operator.getOperator(os);
          ie.addExpElement(o);

          isPositive = true;
          numSB.clear();
          isSign = o.isNextSign;
          i += oLen;
        }
      }
    }

    return ie;
  }

  static ReversePolishExp convertToRPE(InfixExp exp) {
    var rpe = ReversePolishExp();
    var os = <Operator>[];

    for (ExpElement e in exp.expElements) {
      if (e is Operand) {
        rpe.addExpElement(e);
      } else {
        if (e is Operator) {
          Operator o = e;
          var s = e.operator;

          if ('(' == s) {
            os.add(o);
          } else if (')' == s) {
            while ('(' != os.last.operator) {
              rpe.addExpElement(os.removeLast());
            }

            os.removeLast();
          } else {
            while (os.isNotEmpty &&
                (os.last.priority <= o.priority) &&
                ('(' != os.last.operator)) {
              rpe.addExpElement(os.removeLast());
            }

            os.add(o);
          }
        }
      }
    }

    var len = os.length;
    Operator o;
    for (var i = 0; i < len; i++) {
      o = os.removeLast();

      if ('(' != o.operator) {
        rpe.addExpElement(o);
      }
    }

    return rpe;
  }

  static double calcRPE(ReversePolishExp exp) {
    var cs = <double>[];
    var operands = <double>[];
    int numOfParameters;
    int csLen;
    int start;

    for (ExpElement e in exp.expElements) {
      if (e is Operand) {
        cs.add(e.value);
      } else if (e is Operator) {
        numOfParameters = e.numOfParameters;
        operands.clear();
        csLen = cs.length;
        start = csLen - numOfParameters;

        for (int i = 0; i < numOfParameters; i++) {
          operands.add(
            cs[start + i],
          );
        }

        cs.removeRange(start, csLen);

        cs.add(
          e.calc(operands),
        );
      }
    }

    return cs.first;
  }

  static int _getOperatorLen(String exp, int i) {
    var len = 0;

    for (String operator in Operator.operators.keys) {
      if (exp.startsWith(operator, i) && operator.length > len) {
        len = operator.length;
      }
    }

    if (len > 0) {
      return len;
    } else {
      throw Exception('no such operator');
    }
  }
}

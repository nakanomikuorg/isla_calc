import 'package:rational/rational.dart';

import 'exp/infix_exp.dart';
import 'exp/reverse_polish_exp.dart';
import 'exp_element/exp_element.dart';
import 'exp_element/operand.dart';
import 'exp_element/operator.dart';

class Calc {
  /// 计算字符串形式的数学表达式
  static Rational calcExp(String exp) {
    return calcRPE(
      convertToRPE(
        preprocessingIE(
          parseExp(exp),
        ),
      ),
    );
  }

  /// 计算字符串形式的数学表达式，在计算失败时返回 null
  static Rational? tryCalcExp(String exp) {
    try {
      return calcExp(exp);
    } catch (e) {
      return null;
    }
  }

  /// 解析字符串形式的数学表达式
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
          if (isSign && (s == '−' || s == '+')) {
            if ('−' == s) {
              isPositive = !isPositive;
            }

            isSign = true;
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

  /// 预处理中缀表达式
  static InfixExp preprocessingIE(InfixExp exp) {
    final ie = InfixExp();

    var ee = exp.expElements;
    for (int i = 0; i < ee.length - 1; i++) {
      if (ee[i] == const RightParenthesis() &&
          (ee[i + 1] == const LeftParenthesis() || ee[i + 1] is Operand)) {
        ie
          ..addExpElement(ee[i])
          ..addExpElement(const Times());
      } else if (i > 0 &&
          ee[i] == const LeftParenthesis() &&
          ee[i - 1] is Operand) {
        ie
          ..addExpElement(const Times())
          ..addExpElement(ee[i]);
      } else {
        ie.addExpElement(ee[i]);
      }
    }
    ie.addExpElement(ee.last);

    return ie;
  }

  /// 将中缀表达式转换为逆波兰表达式
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

  /// 计算逆波兰表达式
  static Rational calcRPE(ReversePolishExp exp) {
    var cs = <Rational>[];
    var operands = <Rational>[];
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

  /// 返回运算符的长度
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

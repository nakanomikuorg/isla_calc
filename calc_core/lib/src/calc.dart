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
    var j = ee.length - 1;
    for (int i = 0; i < ee.length; i++) {
      if (i > 0 && _isLeftAddMultiplicationSign(ee[i], ee[i - 1])) {
        ie.addExpElement(const Times());
      }

      ie.addExpElement(ee[i]);

      if (i < j && _isRightAddMultiplicationSign(ee[i], ee[i + 1])) {
        ie.addExpElement(const Times());
      }
    }

    return ie;
  }

  /// 判断左边是否需要添加乘号
  static bool _isLeftAddMultiplicationSign(ExpElement e, ExpElement le) {
    if (e is Operator) {
      // 若是运算符或括号，继续判断
      if (e == const LeftParenthesis() || // 当前符号为左括号
          (e != const RightParenthesis() // 或者不是右括号
              &&
              ((e.numOfParameters == 1 && e.isNextSign == true) // 但是是零元运算符
                  ||
                  e.numOfParameters == 0) // 或者右一元运算符
          )) {
        if (le is Operand) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      // 否则返回 false
      return false;
    }
  }

  /// 判断右边是否需要添加乘号
  static bool _isRightAddMultiplicationSign(ExpElement e, ExpElement re) {
    if (e is Operator) {
      // 若是运算符或括号，继续判断
      if (e == const RightParenthesis() || // 当前符号为右括号
              (e != const LeftParenthesis() && // 或者不是左括号
                  e.numOfParameters <= 1 &&
                  e.isNextSign == false) // 但是是零元运算符或者左一元运算符
          ) {
        if (re is Operand) {
          return true;
        } else if (re is Operator) {
          if (re == const LeftParenthesis() ||
              (re != const RightParenthesis() && re.numOfParameters == 0) ||
              (re.numOfParameters == 1 && re.isNextSign == true)) {
            return true;
          } else {
            return false;
          }
        } else {
          throw Exception();
        }
      } else {
        // 否则返回 false
        return false;
      }
    } else {
      return false;
    }
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

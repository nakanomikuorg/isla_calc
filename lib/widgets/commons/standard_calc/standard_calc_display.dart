import 'package:flutter/material.dart';

import '../../general/calc/calc_display.dart';
import '../../general/size_box/v_size_box.dart';
import 'ans_display.dart';
import 'exp_display.dart';

class StandardCalcDisplay extends StatelessWidget {
  const StandardCalcDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcDisplay(
      isScrollAble: false,
      children: <Widget>[
        const Expanded(
          flex: 3,
          child: Center(
            child: ExpDisplay(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.bottomRight,
            child: const AnsDisplay(),
          ),
        ),
        const VSizeBox(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../common/calc/calc_panel.dart';
import 'standard_func_buttons.dart';

class StandardCalcPanel extends StatelessWidget {
  const StandardCalcPanel({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return CalcPanel(
      onPressed: onPressed,
      child: StandardFuncButtons(
        onPressed: onPressed,
      ),
    );
  }
}

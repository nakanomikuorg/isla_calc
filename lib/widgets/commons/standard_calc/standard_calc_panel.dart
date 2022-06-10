import 'package:flutter/material.dart';

import '../../general/calc/calc_panel.dart';
import 'standard_func_buttons.dart';

class StandardCalcPanel extends StatelessWidget {
  const StandardCalcPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcPanel(
      child: StandardFuncButtons(
        onPressed: () {},
      ),
    );
  }
}

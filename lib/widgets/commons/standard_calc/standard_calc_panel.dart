import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../general/calc/calc_panel.dart';
import 'standard_func_buttons.dart';

class StandardCalcPanel extends StatelessWidget {
  const StandardCalcPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcPanel(
      onPressed: Provider.of<CalcModel>(context, listen: false).responseKey,
      child: StandardFuncButtons(
        onPressed: Provider.of<CalcModel>(context, listen: false).responseKey,
      ),
    );
  }
}

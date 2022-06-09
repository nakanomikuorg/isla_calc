import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../themes/text_info.dart';

class AnsDisplay extends StatelessWidget {
  const AnsDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 16.0),
      child: Consumer<CalcModel>(builder: (context, calc, child) {
        return Text(
          calc.currentAnsStr,
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize:
                TextInfo.getStandardCalcAnsDisplayTextSize(calc.currentAnsStr),
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        );
      }),
    );
  }
}

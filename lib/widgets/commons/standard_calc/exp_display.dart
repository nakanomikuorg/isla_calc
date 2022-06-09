import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../themes/text_info.dart';
import '../../general/calc/exp_text_field.dart';

class ExpDisplay extends StatelessWidget {
  const ExpDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
      child: Consumer<CalcModel>(
        builder: (context, calc, child) {
          return TweenAnimationBuilder<double>(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 128),
            tween: Tween(
              begin: TextInfo.getStandardCalcExpDisplayTextSize(calc.newExp),
              end: TextInfo.getStandardCalcExpDisplayTextSize(calc.newExp),
            ),
            builder: (context, value, child) {
              return ExpTextField(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: value,
                controller: calc.expCtl,
              );
            },
          );
        },
      ),
    );
  }
}

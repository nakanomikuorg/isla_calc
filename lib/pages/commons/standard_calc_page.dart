import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/commons/standard_calc/standard_calc_display.dart';
import '../../widgets/commons/standard_calc/standard_calc_panel.dart';
import '../../widgets/general/page/calc_page.dart';

class StandardCalcPage extends StatelessWidget {
  const StandardCalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcPage(
      title: S.of(context).standardCalcTitle,
      display: const StandardCalcDisplay(),
      panel: const StandardCalcPanel(),
    );
  }
}

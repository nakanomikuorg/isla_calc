import 'package:flutter/material.dart';

import '../../widgets/commons/standard_calc/standard_calc_display.dart';
import '../../widgets/commons/standard_calc/standard_calc_panel.dart';
import '../../widgets/general/page/calc_page.dart';

class StandardCalcPage extends StatelessWidget {
  const StandardCalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CalcPage(
      title: '标准计算器',
      display: StandardCalcDisplay(),
      panel: StandardCalcPanel(),
    );
  }
}

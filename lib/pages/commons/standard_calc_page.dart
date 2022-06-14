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
      actionsEntries: const [
        PopupMenuItem<String>(
          value: '/history',
          child: Text('历史记录'),
        ),
        PopupMenuItem<String>(
          value: 'copy',
          child: Text('复制结果'),
        ),
        PopupMenuItem<String>(
          value: '/standard-calc-help',
          child: Text('帮助'),
        ),
        PopupMenuItem<String>(
          value: '/standard-calc-settings',
          child: Text('设置'),
        ),
      ],
      actionsOnSelected: (s) {
        if ('copy' == s) {
        } else if ('history' == s) {
          Navigator.pushNamed(
            context,
            s,
          );
        } else {
          Navigator.pushNamed(
            context,
            s,
          );
        }
      },
      title: S.of(context).standardCalcTitle,
      display: const StandardCalcDisplay(),
      panel: const StandardCalcPanel(),
    );
  }
}

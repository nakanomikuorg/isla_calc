import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../general/calc/calc_panel.dart';

class LenConvPanel extends StatelessWidget {
  const LenConvPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcPanel(
      onPressed: () {
        Provider.of<ConvModel>(context, listen: false).originalMetaValue =
            Provider.of<CalcModel>(context, listen: false).originalAns;
      },
    );
  }
}

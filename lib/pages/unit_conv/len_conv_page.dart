import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../widgets/general/page/calc_page.dart';
import '../../widgets/unit_conv/len_conv/len_conv_display.dart';
import '../../widgets/unit_conv/len_conv/len_conv_panel.dart';

class LenConvPage extends StatelessWidget {
  const LenConvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ConvModel();
      },
      child: CalcPage(
        title: S.of(context).lenConvTitle,
        display: const LenConvDisplay(),
        panel: const LenConvPanel(),
      ),
    );
  }
}

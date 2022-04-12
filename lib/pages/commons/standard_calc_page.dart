import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/common/calc_model.dart';
import '../../widgets/commons/standard_calc/standard_calc_display.dart';
import '../../widgets/commons/standard_calc/standard_calc_panel.dart';
import '../../widgets/general/calc/calc_body_content.dart';
import '../../widgets/general/page/general_page.dart';

class StandardCalcPage extends StatelessWidget {
  const StandardCalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return CalcModel();
      },
      child: const GeneralPage(
        appBarTitle: '标准计算器',
        iconData: Icons.more_vert_rounded,
        body: StandardCalcBodyContent(),
        extendBodyBehindAppBar: false,
      ),
    );
  }
}

class StandardCalcBodyContent extends StatefulWidget {
  const StandardCalcBodyContent({Key? key}) : super(key: key);

  @override
  State<StandardCalcBodyContent> createState() =>
      _StandardCalcBodyContentState();
}

class _StandardCalcBodyContentState extends State<StandardCalcBodyContent> {
  @override
  Widget build(BuildContext context) {
    return CalcBodyContent(
      display: const StandardCalcDisplay(),
      panel: StandardCalcPanel(
        onPressed: Provider.of<CalcModel>(context, listen: false).responseKey,
      ),
    );
  }
}

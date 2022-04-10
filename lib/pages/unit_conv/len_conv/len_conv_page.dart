import 'package:flutter/material.dart';

import '../../../widgets/common_widgets/calc/calc_body_content.dart';
import '../../../widgets/common_widgets/calc/calc_panel.dart';
import '../../../widgets/common_widgets/general_page.dart';

class LenConvPage extends StatelessWidget {
  const LenConvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeneralPage(
      appBarTitle: '长度换算',
      iconData: Icons.more_vert_rounded,
      body: LenConvBodyContent(),
      extendBodyBehindAppBar: false,
    );
  }
}

class LenConvBodyContent extends StatelessWidget {
  const LenConvBodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcBodyContent(
      display: Container(),
      panel: CalcPanel(
        onPressed: () {},
      ),
    );
  }
}

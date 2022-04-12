import 'package:flutter/material.dart';

import '../../widgets/func/func_cards_info_data.dart';
import '../../widgets/general/page/more_page.dart';

class CommonUnitMorePage extends StatelessWidget {
  const CommonUnitMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MorePage(
      cardsInfo: FuncCardsInfoData.allCommonUnitInfo,
    );
  }
}

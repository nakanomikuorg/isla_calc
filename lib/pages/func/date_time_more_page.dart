import 'package:flutter/material.dart';

import '../../widgets/func/func_cards_info_data.dart';
import '../../widgets/general/page/more_page.dart';

class DateTimeMorePage extends StatelessWidget {
  const DateTimeMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MorePage(
      cardsInfo: FuncCardsInfoData.getAllDateTimeInfo(context),
    );
  }
}

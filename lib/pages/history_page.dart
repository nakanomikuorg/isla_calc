import 'package:flutter/material.dart';

import '../widgets/general/page/general_page.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeneralPage(
      body: GeneralBodyContent(
        title: '历史记录',
        emj: '⌛',
      ),
    );
  }
}

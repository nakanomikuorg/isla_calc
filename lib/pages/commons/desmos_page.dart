import 'package:flutter/material.dart';

import '../../widgets/general/page/webview_page.dart';

class DesmosPage extends StatelessWidget {
  const DesmosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebViewPage(
      appBarTitle: 'Desmos',
      url: 'https://www.desmos.com/calculator?lang=zh-CN',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../general/page/general_page.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({
    Key? key,
    this.appBarTitle,
    required this.url,
  }) : super(key: key);

  final String? appBarTitle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      appBarTitle: appBarTitle,
      actionsIconData: Icons.more_vert_rounded,
      body: WebViewBodyContent(
        url: url,
      ),
      extendBodyBehindAppBar: false,
    );
  }
}

class WebViewBodyContent extends StatelessWidget {
  const WebViewBodyContent({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

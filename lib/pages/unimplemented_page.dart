import 'package:flutter/material.dart';

import '../widgets/general/page/general_page.dart';

class UnimplementedPage extends StatelessWidget {
  const UnimplementedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeneralPage(
      body: UnimplementedBodyContent(),
    );
  }
}

class UnimplementedBodyContent extends StatelessWidget {
  const UnimplementedBodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeneralPageBody(
      title: '功能开发中',
      emj: '🐣',
    );
  }
}

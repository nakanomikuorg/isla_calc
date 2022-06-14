import 'package:flutter/material.dart';

import 'general_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
    required this.title,
    required this.emj,
    required this.children,
  }) : super(key: key);

  final String title;
  final String emj;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      body: GeneralBodyContent(
        title: title,
        emj: emj,
        children: children,
      ),
    );
  }
}

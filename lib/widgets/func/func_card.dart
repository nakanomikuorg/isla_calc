import 'package:flutter/material.dart';

import '../common/card/icon_card.dart';

class FuncCard extends StatelessWidget {
  const FuncCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.icon,
    required this.pushName,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final IconData icon;
  final String pushName;

  @override
  Widget build(BuildContext context) {
    return IconCard(
      title: title,
      subtitle: subtitle,
      icon: icon,
      onPressed: () {
        Navigator.pushNamed(
          context,
          pushName,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../../tool/tools.dart';
import 'custom_card.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.icon,
    this.trailing,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var scaleFactor = MediaQuery.of(context).textScaleFactor;
    var bool = Tool.nextBool();

    return CustomCard(
      title: title,
      subtitle: subtitle,
      leading: Container(
        width: scaleFactor * 40.0,
        height: scaleFactor * 40.0,
        decoration: BoxDecoration(
          color: bool
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(scaleFactor * 20.0),
        ),
        child: Icon(
          icon,
          size: scaleFactor * 24.0,
          color: bool
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onTertiary,
        ),
      ),
      onPressed: onPressed,
    );
  }
}

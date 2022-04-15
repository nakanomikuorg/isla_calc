import 'package:flutter/material.dart';

import '../../../themes/text_info.dart';
import '../../../tool/tools.dart';
import 'no_padding_custom_card.dart';

class NoPaddingTextCard extends StatelessWidget {
  const NoPaddingTextCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.text,
    this.trailing,
    required this.onPressed,
    this.shadowColor,
    this.radius = 12.0,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String text;
  final Widget? trailing;
  final Function onPressed;
  final Color? shadowColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    var scaleFactor = MediaQuery.of(context).textScaleFactor;
    var bool = Tool.nextBool();

    return NoPaddingCustomCard(
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
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: bool
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onTertiary,
              fontFamilyFallback: TextInfo.fontFamilyFallback,
            ),
          ),
        ),
      ),
      trailing: trailing,
      onPressed: onPressed,
      shadowColor: shadowColor,
      radius: radius,
    );
  }
}

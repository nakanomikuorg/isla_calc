import 'package:calc_tool/calc_tool.dart';
import 'package:flutter/material.dart';

import '../../../default/text_info.dart';
import 'no_padding_custom_card.dart';

class NoPaddingTextCard extends StatelessWidget {
  const NoPaddingTextCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.text,
    this.trailing,
    this.onPressed,
    this.onFocusChange,
    this.primaryColor,
    this.shadowColor,
    this.radius = 12.0,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String text;
  final Widget? trailing;
  final VoidCallback? onPressed;
  final ValueChanged<bool>? onFocusChange;
  final Color? primaryColor;
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
      onFocusChange: onFocusChange,
      primaryColor: primaryColor,
      shadowColor: shadowColor,
      radius: radius,
    );
  }
}

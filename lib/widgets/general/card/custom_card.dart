import 'package:flutter/material.dart';

import 'card_padding.dart';
import 'no_padding_custom_card.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return CardPadding(
      child: NoPaddingCustomCard(
        title: title,
        subtitle: subtitle,
        leading: leading,
        trailing: trailing,
        onPressed: onPressed,
      ),
    );
  }
}

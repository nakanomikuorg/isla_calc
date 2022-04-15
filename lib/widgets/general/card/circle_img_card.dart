import 'package:flutter/material.dart';

import 'custom_card.dart';

class CircleImgCard extends StatelessWidget {
  const CircleImgCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.img,
    this.trailing,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String img;
  final Widget? trailing;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      leading: CircleAvatar(
        foregroundImage: AssetImage(img),
      ),
      title: title,
      subtitle: subtitle,
      onPressed: onPressed,
    );
  }
}

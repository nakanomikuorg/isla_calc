import 'package:flutter/material.dart';

import 'custom_card.dart';

class CircleImgCard extends StatelessWidget {
  const CircleImgCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.img,
    this.trailing,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String img;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var scaleFactor = MediaQuery.of(context).textScaleFactor;

    return CustomCard(
      leading: CircleAvatar(
        foregroundImage: AssetImage(img),
        radius: scaleFactor * 20.0,
      ),
      title: title,
      subtitle: subtitle,
      onPressed: onPressed,
    );
  }
}

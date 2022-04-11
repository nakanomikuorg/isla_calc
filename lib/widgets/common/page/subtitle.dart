import 'package:flutter/material.dart';

import '../../../themes/text_info.dart';

class Subtitle extends StatefulWidget {
  const Subtitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<Subtitle> createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 0.0),
      child: Text(
        widget.title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          fontFamilyFallback: TextInfo.fontFamilyFallback,
        ),
      ),
    );
  }
}

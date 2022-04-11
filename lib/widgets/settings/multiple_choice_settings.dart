import 'package:flutter/material.dart';

class MultipleChoiceSettings extends StatelessWidget {
  const MultipleChoiceSettings({
    Key? key,
    this.title,
    this.subtitle,
    required this.onTap,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 4.0),
      child: ListTile(
        title: title == null ? null : Text(title!),
        subtitle: subtitle == null ? null : Text(subtitle!),
        onTap: () => onTap(),
      ),
    );
  }
}

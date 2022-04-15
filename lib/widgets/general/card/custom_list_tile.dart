import 'package:flutter/material.dart';

import '../size_box/h_size_box.dart';
import '../size_box/v_size_box.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.minVerticalPadding = 16.0,
  }) : super(key: key);

  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final Widget? subtitle;
  final double minVerticalPadding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        if (leading != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              VSizeBox(
                size: minVerticalPadding,
              ),
              leading!,
              VSizeBox(
                size: minVerticalPadding,
              ),
            ],
          ),
        if (leading != null) const HSizeBox(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              VSizeBox(
                size: minVerticalPadding,
              ),
              if (title != null) title!,
              if (title != null && subtitle != null)
                const VSizeBox(
                  size: 4.0,
                ),
              if (subtitle != null) subtitle!,
              VSizeBox(
                size: minVerticalPadding,
              ),
            ],
          ),
        ),
        if (trailing != null) const HSizeBox(),
        if (trailing != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              trailing!,
            ],
          ),
        const HSizeBox(),
      ],
    );
  }
}

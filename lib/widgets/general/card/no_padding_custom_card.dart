import 'package:flutter/material.dart';

import 'custom_list_tile.dart';

class NoPaddingCustomCard extends StatelessWidget {
  const NoPaddingCustomCard({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onPressed,
    this.onFocusChange,
    this.primaryColor,
    this.shadowColor,
    this.radius = 12.0,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onPressed;
  final ValueChanged<bool>? onFocusChange;
  final Color? primaryColor;
  final Color? shadowColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        primary: primaryColor == null
            ? ElevationOverlay.applySurfaceTint(
                Theme.of(context).colorScheme.surface,
                Theme.of(context).colorScheme.primary,
                0.05,
              )
            : primaryColor!,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        shadowColor: shadowColor,
      ),
      onPressed: onPressed,
      onFocusChange: onFocusChange,
      child: CustomListTile(
        leading: leading,
        trailing: trailing,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        subtitle: subtitle == null
            ? null
            : Text(
                subtitle!,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
      ),
    );
  }
}

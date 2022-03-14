import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BlurredAppBar({Key? key}) : super(key: key);

  @override
  State<BlurredAppBar> createState() => _BlurredAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(64.0);
}

class _BlurredAppBarState extends State<BlurredAppBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          padding: EdgeInsets.fromLTRB(
              16.0, MediaQuery.of(context).padding.top + 20.0, 16.0, 20.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withOpacity(0.6),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 24.0,
                color: Theme.of(context).colorScheme.onSurface,
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
                icon: const Icon(Icons.menu_rounded),
                onPressed: () {},
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '桃之夭夭，灼灼其华',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
              IconButton(
                iconSize: 24.0,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                icon: const Icon(Icons.more_vert_rounded),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isla_calc/widgets/general/decoration/blur_widget.dart';
import 'package:provider/provider.dart';

import '../../../models/settings/theme_model.dart';

class BlurAbleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BlurAbleAppBar({
    Key? key,
    this.title,
    required this.actions,
  }) : super(key: key);

  final String? title;
  final List<Widget> actions;

  @override
  Size get preferredSize => const Size.fromHeight(64.0);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        var bgColor = theme.isGaussianBlur || title == null
            ? Colors.transparent
            : Theme.of(context).colorScheme.surface.withOpacity(0.8);
        var appBar = AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                (Theme.of(context).brightness == Brightness.light)
                    ? Brightness.dark
                    : Brightness.light,
            statusBarColor: Colors.transparent,
          ),
          backgroundColor: bgColor,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: 24.0,
          ),
          title: child,
          actions: actions,
        );

        return theme.isGaussianBlur
            ? BlurWidget(
                child: appBar,
              )
            : appBar;
      },
      child: title == null
          ? null
          : Text(
              title!,
              style: TextStyle(
                fontSize: 16.0,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isla_calc/widgets/common_widgets/blur_widget.dart';

class BlurAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BlurAppBar(this._title, this._actions, {Key? key}) : super(key: key);

  final String _title;
  final List<Widget> _actions;

  @override
  Size get preferredSize => const Size.fromHeight(64.0);

  @override
  Widget build(BuildContext context) {
    return BlurWidget(
      AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness:
              (Theme.of(context).brightness == Brightness.light)
                  ? Brightness.dark
                  : Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          size: 24.0,
        ),
        title: Text(
          _title,
          style: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        actions: _actions,
      ),
    );
  }
}

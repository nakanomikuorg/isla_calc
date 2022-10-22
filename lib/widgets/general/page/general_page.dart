import 'package:flutter/material.dart';

import '../../../default/text_info.dart';
import 'blur_able_app_bar.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({
    Key? key,
    this.appBarTitle,
    this.actionsIconData,
    this.actionsEntries,
    this.actionsOnSelected,
    this.body,
    this.bottomNavigationBar,
    this.extendBodyBehindAppBar = true,
  }) : super(key: key);

  final String? appBarTitle;
  final IconData? actionsIconData;
  final List<PopupMenuEntry<String>>? actionsEntries;
  final Function(String)? actionsOnSelected;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool extendBodyBehindAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBody: true,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      appBar: BlurAbleAppBar(
        title: appBarTitle,
        actions: actionsEntries == null
            ? <Widget>[]
            : <Widget>[
                PopupMenuButton<String>(
                  icon: Icon(
                    actionsIconData ?? Icons.more_vert_rounded,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  color: ElevationOverlay.applySurfaceTint(
                    Theme.of(context).colorScheme.surface,
                    Theme.of(context).colorScheme.primary,
                    5.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  itemBuilder: (context) {
                    return actionsEntries!;
                  },
                  onSelected: actionsOnSelected,
                )
              ],
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

class GeneralBodyContent extends StatelessWidget {
  const GeneralBodyContent({
    Key? key,
    required this.title,
    required this.emj,
    this.children,
  }) : super(key: key);

  final String title;
  final String emj;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 16.0, 0.0, 0.0),
          child: Text(
            emj,
            style: TextInfo.titleEmjTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: TextInfo.titleSize,
              fontWeight: FontWeight.w500,
              fontFamilyFallback: TextInfo.fontFamilyFallback,
            ),
          ),
        ),
        ...?children,
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../themes/text_info.dart';
import 'blur_able_app_bar.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({
    Key? key,
    this.appBarTitle,
    this.iconData,
    this.body,
    this.bottomNavigationBar,
    this.extendBodyBehindAppBar = true,
  }) : super(key: key);

  final String? appBarTitle;
  final IconData? iconData;
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
        actions: iconData == null
            ? <Widget>[]
            : <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    iconData,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

class GeneralPageBody extends StatelessWidget {
  const GeneralPageBody({
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

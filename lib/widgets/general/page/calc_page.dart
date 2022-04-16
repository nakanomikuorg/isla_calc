import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/general/calc/calc_model.dart';
import 'general_page.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({
    Key? key,
    required this.title,
    required this.display,
    required this.panel,
  }) : super(key: key);

  final String title;
  final Widget display;
  final Widget panel;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return CalcModel();
      },
      child: GeneralPage(
        appBarTitle: title,
        iconData: Icons.more_vert_rounded,
        body: CalcBodyContent(
          display: display,
          panel: panel,
        ),
        extendBodyBehindAppBar: false,
      ),
    );
  }
}

class CalcBodyContent extends StatelessWidget {
  const CalcBodyContent({
    Key? key,
    required this.display,
    required this.panel,
  }) : super(key: key);

  final Widget display;
  final Widget panel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ElevationOverlay.colorWithOverlay(
        Theme.of(context).colorScheme.surface,
        Theme.of(context).colorScheme.primary,
        8.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: display,
          ),
          Stack(
            children: <Widget>[
              panel,
            ],
          ),
        ],
      ),
    );
  }
}

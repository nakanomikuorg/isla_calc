import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';

import '../decoration/no_scroll_behavior_widget.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
      ),
      child: ScrollConfiguration(
        behavior: NoScrollBehaviorWidget(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: children,
        ),
      ),
    );
  }
}

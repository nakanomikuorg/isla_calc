import 'package:flutter/material.dart';

import '../decoration/no_scroll_behavior_widget.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({
    Key? key,
    required this.children,
    this.isScrollAble = true,
  }) : super(key: key);

  final List<Widget> children;
  final bool isScrollAble;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
      ),
      child: isScrollAble
          ? ScrollConfiguration(
              behavior: NoScrollBehaviorWidget(),
              child: ListView(
                children: children,
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: children,
            ),
    );
  }
}

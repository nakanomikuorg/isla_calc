import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/common/sizebox/v_size_box.dart';

import 'calc_buttons.dart';

class CalcPanel extends StatelessWidget {
  const CalcPanel({
    Key? key,
    this.child,
    required this.onPressed,
    this.size = 0.6,
  }) : super(key: key);

  final Widget? child;
  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ElevationOverlay.colorWithOverlay(
          Theme.of(context).colorScheme.surface,
          Theme.of(context).colorScheme.primary,
          8.0,
        ),
      ),
      child: Column(
        children: <Widget>[
          const VSizeBox(),
          if (child != null) child!,
          if (child != null)
            const VSizeBox(
              size: 8.0,
            ),
          FirstCalcButtons(
            onPressed: onPressed,
            size: size,
          ),
          const VSizeBox(
            size: 8.0,
          ),
          SecondCalcButtons(
            onPressed: onPressed,
            size: size,
          ),
          const VSizeBox(
            size: 8.0,
          ),
          ThirdCalcButtons(
            onPressed: onPressed,
            size: size,
          ),
          const VSizeBox(
            size: 8.0,
          ),
          FourthCalcButtons(
            onPressed: onPressed,
            size: size,
          ),
          const VSizeBox(
            size: 8.0,
          ),
          FifthCalcButtons(
            onPressed: onPressed,
            size: size,
          ),
          const VSizeBox(),
        ],
      ),
    );
  }
}

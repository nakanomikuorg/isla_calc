import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/commons/standard_calc/standard_buttons.dart';

import 'func_buttons.dart';

class CalcPanel extends StatelessWidget {
  const CalcPanel(this._onPressed, {Key? key}) : super(key: key);

  final Function _onPressed;

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
          const SizedBox(
            height: 16.0,
          ),
          FuncButtons(_onPressed),
          const SizedBox(
            height: 8.0,
          ),
          FirstRowOfStandardButtons(_onPressed),
          const SizedBox(
            height: 8.0,
          ),
          SecondRowOfStandardButtons(_onPressed),
          const SizedBox(
            height: 8.0,
          ),
          ThirdRowOfStandardButtons(_onPressed),
          const SizedBox(
            height: 8.0,
          ),
          FourthRowOfStandardButtons(_onPressed),
          const SizedBox(
            height: 8.0,
          ),
          FifthRowOfStandardButtons(_onPressed),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}

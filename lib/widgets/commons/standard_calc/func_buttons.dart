import 'package:flutter/material.dart';

import 'calc_button.dart';

class FuncButtons extends StatelessWidget {
  const FuncButtons(this._onPress, {Key? key}) : super(key: key);

  final Function _onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 16.0,
        ),
        StandardCalcTextFnButton(
          'MC',
          _onPress,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          'M+',
          _onPress,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          'M-',
          _onPress,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          'MR',
          _onPress,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}

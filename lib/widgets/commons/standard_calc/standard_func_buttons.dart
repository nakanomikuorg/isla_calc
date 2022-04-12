import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/general/size_box/h_size_box.dart';

import '../../general/calc/calc_button.dart';

class StandardFuncButtons extends StatelessWidget {
  const StandardFuncButtons({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        TextFnButton(
          text: 'MC',
          onPressed: onPressed,
          size: 0.6,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: 'M+',
          onPressed: onPressed,
          size: 0.6,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: 'M-',
          onPressed: onPressed,
          size: 0.6,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: 'MR',
          onPressed: onPressed,
          size: 0.6,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const HSizeBox(),
      ],
    );
  }
}

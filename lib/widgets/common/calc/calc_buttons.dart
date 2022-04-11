import 'package:flutter/material.dart';

import '../sizebox/h_size_box.dart';
import 'calc_button.dart';

class FirstCalcButtons extends StatelessWidget {
  const FirstCalcButtons({
    Key? key,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        TextFnButton(
          text: 'AC',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '×',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '÷',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        IconFnButton(
          icon: Icons.backspace_outlined,
          label: 'backspace',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class SecondCalcButtons extends StatelessWidget {
  const SecondCalcButtons({
    Key? key,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '7',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '8',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '9',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '( )',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class ThirdCalcButtons extends StatelessWidget {
  const ThirdCalcButtons({
    Key? key,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '4',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '5',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '6',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '−',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class FourthCalcButtons extends StatelessWidget {
  const FourthCalcButtons({
    Key? key,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '1',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '2',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '3',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '+',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class FifthCalcButtons extends StatelessWidget {
  const FifthCalcButtons({
    Key? key,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '%',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '0',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '.',
          onPressed: onPressed,
          size: size,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '=',
          onPressed: onPressed,
          size: size,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
        const HSizeBox(),
      ],
    );
  }
}

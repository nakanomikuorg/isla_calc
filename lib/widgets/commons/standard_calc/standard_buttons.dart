import 'package:flutter/material.dart';

import 'calc_button.dart';

class FirstRowOfStandardButtons extends StatelessWidget {
  const FirstRowOfStandardButtons(this._onPressed, {Key? key})
      : super(key: key);

  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 16.0,
        ),
        StandardCalcTextFnButton(
          'AC',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          '×',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          '÷',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcIconFnButton(
          Icons.backspace_outlined,
          'backspace',
          _onPressed,
        ),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}

class SecondRowOfStandardButtons extends StatelessWidget {
  const SecondRowOfStandardButtons(this._onPressed, {Key? key})
      : super(key: key);

  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 16.0,
        ),
        StandardCalcNumButton(
          '7',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '8',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '9',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          '( )',
          _onPressed,
        ),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}

class ThirdRowOfStandardButtons extends StatelessWidget {
  const ThirdRowOfStandardButtons(this._onPressed, {Key? key})
      : super(key: key);

  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 16.0,
        ),
        StandardCalcNumButton(
          '4',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '5',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '6',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          '−',
          _onPressed,
        ),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}

class FourthRowOfStandardButtons extends StatelessWidget {
  const FourthRowOfStandardButtons(this._onPressed, {Key? key})
      : super(key: key);

  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 16.0,
        ),
        StandardCalcNumButton(
          '1',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '2',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '3',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          '+',
          _onPressed,
        ),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}

class FifthRowOfStandardButtons extends StatelessWidget {
  const FifthRowOfStandardButtons(this._onPressed, {Key? key})
      : super(key: key);

  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(
          width: 16.0,
        ),
        StandardCalcNumButton(
          '%',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '0',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcNumButton(
          '.',
          _onPressed,
        ),
        const SizedBox(
          width: 8.0,
        ),
        StandardCalcTextFnButton(
          '=',
          _onPressed,
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

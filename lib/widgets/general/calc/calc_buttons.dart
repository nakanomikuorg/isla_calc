import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_box/h_size_box.dart';
import 'calc_button.dart';

class FirstCalcButtons extends StatelessWidget {
  const FirstCalcButtons({
    Key? key,
    required this.size,
    this.onPressed,
  }) : super(key: key);

  final double size;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    var responseKey =
        Provider.of<CalcModel>(context, listen: false).responseKey;

    onPressed2(s) {
      responseKey(s);
      onPressed!();
    }

    return Row(
      children: <Widget>[
        const HSizeBox(),
        TextFnButton(
          text: 'AC',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '×',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '÷',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        IconFnButton(
          icon: Icons.backspace_outlined,
          label: 'backspace',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class SecondCalcButtons extends StatelessWidget {
  const SecondCalcButtons({
    Key? key,
    required this.size,
    this.onPressed,
  }) : super(key: key);

  final double size;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    var responseKey =
        Provider.of<CalcModel>(context, listen: false).responseKey;

    onPressed2(s) {
      responseKey(s);
      onPressed!();
    }

    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '7',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '8',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '9',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '( )',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class ThirdCalcButtons extends StatelessWidget {
  const ThirdCalcButtons({
    Key? key,
    required this.size,
    this.onPressed,
  }) : super(key: key);

  final double size;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    var responseKey =
        Provider.of<CalcModel>(context, listen: false).responseKey;

    onPressed2(s) {
      responseKey(s);
      onPressed!();
    }

    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '4',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '5',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '6',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '−',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class FourthCalcButtons extends StatelessWidget {
  const FourthCalcButtons({
    Key? key,
    required this.size,
    this.onPressed,
  }) : super(key: key);

  final double size;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    var responseKey =
        Provider.of<CalcModel>(context, listen: false).responseKey;

    onPressed2(s) {
      responseKey(s);
      onPressed!();
    }

    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '1',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '2',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '3',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '+',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(),
      ],
    );
  }
}

class FifthCalcButtons extends StatelessWidget {
  const FifthCalcButtons({
    Key? key,
    required this.size,
    this.onPressed,
  }) : super(key: key);

  final double size;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    var responseKey =
        Provider.of<CalcModel>(context, listen: false).responseKey;

    onPressed2(s) {
      responseKey(s);
      onPressed!();
    }

    return Row(
      children: <Widget>[
        const HSizeBox(),
        NumButton(
          text: '%',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '0',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        NumButton(
          text: '.',
          size: size,
          onPressed: onPressed2,
        ),
        const HSizeBox(
          size: 8.0,
        ),
        TextFnButton(
          text: '=',
          size: size,
          bgColor: Theme.of(context).colorScheme.tertiaryContainer,
          textColor: Theme.of(context).colorScheme.onTertiaryContainer,
          onPressed: responseKey,
        ),
        const HSizeBox(),
      ],
    );
  }
}

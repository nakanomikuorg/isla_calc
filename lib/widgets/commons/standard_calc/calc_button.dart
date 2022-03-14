import 'package:flutter/material.dart';

class StandardCalcNumButton extends StatelessWidget {
  const StandardCalcNumButton(this._text, this._onPressed, {Key? key})
      : super(key: key);

  final String _text;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return StandardCalcCommonButton(
      Text(
        _text,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.clip,
        textScaleFactor: 1.0,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          fontSize: 28.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      Theme.of(context).colorScheme.secondaryContainer,
      () => _onPressed(_text),
    );
  }
}

class StandardCalcIconFnButton extends StatelessWidget {
  const StandardCalcIconFnButton(this._icon, this._label, this._onPressed,
      {Key? key, this.bgColor, this.iconColor})
      : super(key: key);

  final IconData _icon;
  final String _label;
  final Color? bgColor;
  final Color? iconColor;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return StandardCalcCommonButton(
      Icon(
        _icon,
        color: iconColor == null
            ? Theme.of(context).colorScheme.onTertiaryContainer
            : iconColor!,
      ),
      bgColor == null
          ? Theme.of(context).colorScheme.tertiaryContainer
          : bgColor!,
      () => _onPressed(_label),
    );
  }
}

class StandardCalcTextFnButton extends StatelessWidget {
  const StandardCalcTextFnButton(this._text, this._onPressed,
      {Key? key, this.bgColor, this.textColor})
      : super(key: key);

  final String _text;
  final Color? bgColor;
  final Color? textColor;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return StandardCalcCommonButton(
      Text(
        _text,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.clip,
        textScaleFactor: 1.0,
        style: TextStyle(
          color: textColor == null
              ? Theme.of(context).colorScheme.onPrimaryContainer
              : textColor!,
          fontSize: 28.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      bgColor == null
          ? Theme.of(context).colorScheme.primaryContainer
          : bgColor!,
      () => _onPressed(_text),
    );
  }
}

class StandardCalcCommonButton extends StatelessWidget {
  const StandardCalcCommonButton(this._widget, this._bgColor, this._onPressed,
      {Key? key})
      : super(key: key);

  final Widget _widget;
  final Color _bgColor;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonSize = (MediaQuery.of(context).size.height * 0.6 - 72) / 6;

    return Expanded(
      flex: 1,
      child: OutlinedButton(
        style: TextButton.styleFrom(
          backgroundColor: _bgColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(buttonSize >= 76 ? 38 : buttonSize / 2),
          ),
          side: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        onPressed: () => _onPressed(),
        child: Container(
          height: buttonSize >= 76 ? 76 : buttonSize,
          alignment: Alignment.center,
          child: _widget,
        ),
      ),
    );
  }
}

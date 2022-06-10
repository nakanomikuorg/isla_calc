import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  const NumButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final String text;
  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      child: Text(
        text,
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
      bgColor: Theme.of(context).colorScheme.secondaryContainer,
      size: size,
      onPressed: () {
        onPressed(text);
      },
    );
  }
}

class IconFnButton extends StatelessWidget {
  const IconFnButton({
    Key? key,
    required this.icon,
    required this.label,
    this.bgColor,
    this.iconColor,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Color? bgColor;
  final Color? iconColor;
  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      child: Icon(
        icon,
        color: iconColor == null
            ? Theme.of(context).colorScheme.onTertiaryContainer
            : iconColor!,
      ),
      bgColor: bgColor == null
          ? Theme.of(context).colorScheme.tertiaryContainer
          : bgColor!,
      size: size,
      onPressed: () {
        onPressed(label);
      },
    );
  }
}

class TextFnButton extends StatelessWidget {
  const TextFnButton({
    Key? key,
    required this.text,
    this.bgColor,
    this.textColor,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final String text;
  final Color? bgColor;
  final Color? textColor;
  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      child: Text(
        text,
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
      size: size,
      bgColor: bgColor == null
          ? Theme.of(context).colorScheme.primaryContainer
          : bgColor!,
      onPressed: () {
        onPressed(text);
      },
    );
  }
}

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.child,
    required this.bgColor,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final Widget child;
  final Color bgColor;
  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    final buttonSize = (MediaQuery.of(context).size.height * size - 72) / 6;

    return Expanded(
      flex: 1,
      child: OutlinedButton(
        child: Container(
          child: child,
          alignment: Alignment.center,
          height: buttonSize >= 76 ? 76 : buttonSize,
        ),
        onPressed: () => onPressed(),
        style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(buttonSize >= 76 ? 38 : buttonSize / 2),
          ),
          side: const BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

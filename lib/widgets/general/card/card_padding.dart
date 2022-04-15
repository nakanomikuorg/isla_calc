import 'package:flutter/material.dart';

class CardPadding extends StatelessWidget {
  const CardPadding({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 0.0),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class HSizeBox extends StatelessWidget {
  const HSizeBox({
    Key? key,
    this.size = 16.0,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}

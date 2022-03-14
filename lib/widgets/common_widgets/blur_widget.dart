import 'dart:ui';

import 'package:flutter/material.dart';

import '../../themes/theme_info.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget(this._child, {Key? key}) : super(key: key);

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: ThemeInfo.blurSigma,
          sigmaY: ThemeInfo.blurSigma,
        ),
        child: _child,
      ),
    );
  }
}

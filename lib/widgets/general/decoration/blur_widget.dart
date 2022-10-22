import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../default/theme_info.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: ThemeInfo.blurSigma,
          sigmaY: ThemeInfo.blurSigma,
        ),
        child: child,
      ),
    );
  }
}

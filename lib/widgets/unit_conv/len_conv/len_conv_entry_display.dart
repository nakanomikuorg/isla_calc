import 'package:flutter/material.dart';

import '../../general/calc/entry_display.dart';

class LenConvEntryDisplay extends StatelessWidget {
  const LenConvEntryDisplay({
    Key? key,
    required this.unitName,
    required this.unitSymbol,
    required this.isFocused,
  }) : super(key: key);

  final String unitName;
  final String unitSymbol;
  final bool isFocused;

  @override
  Widget build(BuildContext context) {
    return EntryDisplay(
      unitName: unitName,
      unitSymbol: unitSymbol,
      isFocused: isFocused,
    );
  }
}

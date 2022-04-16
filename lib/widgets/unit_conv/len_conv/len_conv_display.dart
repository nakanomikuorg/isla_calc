import 'package:flutter/material.dart';

import '../../general/calc/calc_display.dart';
import 'len_conv_entry_display.dart';

class LenConvDisplay extends StatelessWidget {
  const LenConvDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CalcDisplay(
      children: <Widget>[
        LenConvEntryDisplay(
          unitName: '千米',
          unitSymbol: 'km',
          isFocused: true,
        ),
        LenConvEntryDisplay(
          unitName: '米',
          unitSymbol: 'm',
          isFocused: false,
        ),
      ],
    );
  }
}

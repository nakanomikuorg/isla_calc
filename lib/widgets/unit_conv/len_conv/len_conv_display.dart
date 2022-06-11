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
          unitName: '米',
          unitSymbol: 'm',
          meta2RstRs: 'x',
          original2MetaRs: 'x',
          isFocused: true,
        ),
        LenConvEntryDisplay(
          unitName: '千米',
          unitSymbol: 'km',
          meta2RstRs: 'x × 0.001',
          original2MetaRs: 'x × 1000',
          isFocused: false,
        ),
        LenConvEntryDisplay(
          unitName: '分米',
          unitSymbol: 'dm',
          meta2RstRs: 'x × 10',
          original2MetaRs: 'x × 0.01',
          isFocused: false,
        ),
        LenConvEntryDisplay(
          unitName: '厘米',
          unitSymbol: 'cm',
          meta2RstRs: 'x × 100',
          original2MetaRs: 'x × 0.001',
          isFocused: false,
        ),
        LenConvEntryDisplay(
          unitName: '毫米',
          unitSymbol: 'mm',
          meta2RstRs: 'x × 1000',
          original2MetaRs: 'x × 0.0001',
          isFocused: false,
        ),
      ],
    );
  }
}

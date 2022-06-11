import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../general/calc/entry_display.dart';

class LenConvEntryDisplay extends StatelessWidget {
  const LenConvEntryDisplay({
    Key? key,
    required this.unitName,
    required this.unitSymbol,
    required this.meta2RstRs,
    required this.original2MetaRs,
    required this.isFocused,
  }) : super(key: key);

  final String unitName;
  final String unitSymbol;
  final String meta2RstRs;
  final String original2MetaRs;
  final bool isFocused;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ConvEntryModel(
          unitName,
          unitSymbol,
          meta2RstRs,
          original2MetaRs,
        );
      },
      child: EntryDisplay(isFocused: isFocused),
    );
  }
}

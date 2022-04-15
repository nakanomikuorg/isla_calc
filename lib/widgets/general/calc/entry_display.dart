import 'package:flutter/material.dart';

import '../card/no_padding_text_card.dart';
import 'entry_core_display.dart';

class EntryDisplay extends StatefulWidget {
  const EntryDisplay({
    Key? key,
    required this.unitName,
    required this.unitSymbol,
  }) : super(key: key);

  final String unitName;
  final String unitSymbol;

  @override
  State<EntryDisplay> createState() => _EntryDisplayState();
}

class _EntryDisplayState extends State<EntryDisplay> {
  var _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return NoPaddingTextCard(
      title: widget.unitSymbol,
      subtitle: widget.unitName,
      text: widget.unitSymbol.substring(0, 1).toUpperCase(),
      radius: 0.0,
      shadowColor: Colors.transparent,
      trailing: const EntryCoreDisplay(),
      primaryColor:
          _isFocused ? Theme.of(context).colorScheme.surfaceVariant : null,
      onPressed: () {},
      onFocusChange: (v) {
        setState(() {
          _isFocused = v;
        });
      },
    );
  }
}

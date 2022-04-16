import 'package:flutter/material.dart';

import '../card/no_padding_text_card.dart';
import 'entry_core_display.dart';

class EntryDisplay extends StatefulWidget {
  const EntryDisplay({
    Key? key,
    required this.unitName,
    required this.unitSymbol,
    required this.isFocused,
  }) : super(key: key);

  final String unitName;
  final String unitSymbol;
  final bool isFocused;

  @override
  State<EntryDisplay> createState() => _EntryDisplayState();
}

class _EntryDisplayState extends State<EntryDisplay> {
  late FocusNode _focusNode;
  late bool _isFocused;

  @override
  void initState() {
    super.initState();
    _isFocused = widget.isFocused;
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NoPaddingTextCard(
      title: widget.unitSymbol,
      subtitle: widget.unitName,
      text: widget.unitSymbol.substring(0, 1).toUpperCase(),
      radius: 0.0,
      shadowColor: Colors.transparent,
      trailing: EntryCoreDisplay(
        focusNode: _focusNode,
        isFocused: _isFocused,
      ),
      primaryColor:
          _isFocused ? Theme.of(context).colorScheme.surfaceVariant : null,
      onPressed: () {
        setState(() {
          _isFocused = true;
        });

        _focusNode.requestFocus();
      },
      onFocusChange: (v) {
        setState(() {
          _isFocused = v;
        });
      },
    );
  }
}

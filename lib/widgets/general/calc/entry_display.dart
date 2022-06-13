import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../card/no_padding_text_card.dart';
import 'entry_core_display.dart';

class EntryDisplay extends StatefulWidget {
  const EntryDisplay({
    Key? key,
    required this.isFocused,
  }) : super(key: key);

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
    return Consumer<ConvEntryModel>(
      builder: (context, convEntry, outerChild) {
        return NoPaddingTextCard(
          title: convEntry.unitSymbol,
          subtitle: convEntry.unitName,
          text: convEntry.unitSymbol.substring(0, 1).toUpperCase(),
          radius: 0.0,
          shadowColor: Colors.transparent,
          trailing: outerChild,
          primaryColor:
              _isFocused ? Theme.of(context).colorScheme.surfaceVariant : null,
          onPressed: () {
            setState(() {
              _isFocused = true;
            });

            Provider.of<ConvModel>(
              context,
              listen: false,
            ).originalConvToMetaRelationship = convEntry.original2MetaRs;
            _focusNode.requestFocus();
          },
          onFocusChange: (v) {
            if (_isFocused != v) {
              setState(() {
                _isFocused = v;
              });
            }
          },
        );
      },
      child: EntryCoreDisplay(
        focusNode: _focusNode,
        isFocused: _isFocused,
      ),
    );
  }
}

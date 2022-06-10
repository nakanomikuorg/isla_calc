import 'package:calc_model/calc_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_box/v_size_box.dart';
import 'exp_text_field.dart';

class EntryCoreDisplay extends StatelessWidget {
  const EntryCoreDisplay({
    Key? key,
    required this.isFocused,
    this.focusNode,
  }) : super(key: key);

  final bool isFocused;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Consumer<ConvEntryModel>(
        builder: (context, convEntry, outerChild) {
          if (isFocused) {
            return Consumer<CalcModel>(
              builder: (context, calc, innerChild) {
                List<Widget> children;

                if ((calc.hasAns && calc.currentAnsStr == '') ||
                    (calc.newExp.length == 0)) {
                  children = <Widget>[
                    ExpTextField(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      focusNode: focusNode,
                      fontSize: 37.0,
                      controller: calc.expCtl,
                    ),
                  ];
                } else {
                  children = <Widget>[
                    ExpTextField(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      focusNode: focusNode,
                      fontSize: 12.0,
                      controller: calc.expCtl,
                    ),
                    const VSizeBox(
                      size: 4.0,
                    ),
                    Text(
                      calc.originalAnsStr,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24.0,
                      ),
                    ),
                  ];
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: children,
                );
              },
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Consumer<ConvModel>(
                  builder: (context, conv, innerChild) {
                    return Text(
                      convEntry
                          .getRst(conv.originalMetaValue.toString())
                          .toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 39.0,
                      ),
                    );
                  },
                ),
              ],
            );
          }
        },
      ),
      width: MediaQuery.of(context).size.width * 0.4,
    );
  }
}

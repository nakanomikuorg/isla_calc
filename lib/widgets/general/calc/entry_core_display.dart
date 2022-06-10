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
      child: Consumer<ConvEntryModel>(builder: (context, conv, child) {
        return Consumer<CalcModel>(
          builder: (context, calc, child) {
            List<Widget> children;

            if (isFocused) {
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
                    conv.getRst(calc.originalAnsStr).toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 24.0,
                    ),
                  ),
                ];
              }
            } else {
              children = <Widget>[
                Text(
                  conv.getRst(calc.originalAnsStr).toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 39.0,
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
      }),
      width: MediaQuery.of(context).size.width * 0.4,
    );
  }
}

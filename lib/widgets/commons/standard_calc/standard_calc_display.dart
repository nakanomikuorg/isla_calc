import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/common/calc_model.dart';
import '../../../themes/text_info.dart';
import '../../general/decoration/no_scroll_behavior_widget.dart';

class StandardCalcDisplay extends StatelessWidget {
  const StandardCalcDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
      ),
      child: ScrollConfiguration(
        behavior: NoScrollBehaviorWidget(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Expanded(
              flex: 3,
              child: Center(
                child: ExpDisplay(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                child: const AnsDisplay(),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ExpDisplay extends StatelessWidget {
  const ExpDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
      child: Consumer<CalcModel>(
        builder: (context, calc, child) {
          return TweenAnimationBuilder<double>(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 128),
            tween: Tween(
              begin: TextInfo.getStandardCalcExpDisplayTextSize(calc.newExp),
              end: TextInfo.getStandardCalcExpDisplayTextSize(calc.newExp),
            ),
            builder: (context, value, child) {
              return TextField(
                autocorrect: false,
                autofocus: true,
                controller: calc.expCtl,
                decoration: null,
                enableSuggestions: false,
                readOnly: true,
                showCursor: true,
                style: TextStyle(
                  fontSize: value,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                textAlign: TextAlign.right,
              );
            },
          );
        },
      ),
    );
  }
}

class AnsDisplay extends StatelessWidget {
  const AnsDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 16.0),
      child: Consumer<CalcModel>(builder: (context, calc, child) {
        return Text(
          calc.currentAns,
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize:
                TextInfo.getStandardCalcAnsDisplayTextSize(calc.currentAns),
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../themes/text_info.dart';
import '../../common_widgets/no_scroll_behavior_widget.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay(this._expController, this._currentAns, this._expTextSize,
      {Key? key})
      : super(key: key);

  final TextEditingController _expController;
  final String _currentAns;
  final double _expTextSize;

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
            Expanded(
              flex: 3,
              child: Center(
                child: ExpDisplay(
                  _expController,
                  _expTextSize,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                child: AnsDisplay(_currentAns),
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
  const ExpDisplay(this._expController, this._textSize, {Key? key})
      : super(key: key);

  final TextEditingController _expController;
  final double _textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 16.0),
      child: TweenAnimationBuilder<double>(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 128),
        tween: Tween(begin: _textSize, end: _textSize),
        builder: (context, value, child) {
          return TextField(
            autocorrect: false,
            autofocus: true,
            controller: _expController,
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
      ),
    );
  }
}

class AnsDisplay extends StatelessWidget {
  const AnsDisplay(this._currentAns, {Key? key}) : super(key: key);

  final String _currentAns;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 16.0),
      child: Text(
        _currentAns,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: TextInfo.getStandardCalcAnsDisplayTextSize(_currentAns),
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

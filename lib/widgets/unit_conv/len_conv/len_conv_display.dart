import 'package:flutter/material.dart';

import '../../general/calc/calc_display.dart';

class LenConvDisplay extends StatelessWidget {
  const LenConvDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcDisplay(
      children: <Widget>[
        ListTile(
          title: const Text('M'),
          trailing: TextField(
            autocorrect: false,
            autofocus: true,
            decoration: null,
            enableSuggestions: false,
            readOnly: true,
            showCursor: true,
            style: TextStyle(
              fontSize: 32,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        ListTile(
          title: const Text('KM'),
          trailing: TextField(
            autocorrect: false,
            autofocus: true,
            decoration: null,
            enableSuggestions: false,
            readOnly: true,
            showCursor: true,
            style: TextStyle(
              fontSize: 32,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}

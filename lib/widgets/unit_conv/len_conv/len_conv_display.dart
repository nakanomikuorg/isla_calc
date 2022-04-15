import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/common/calc_model.dart';
import '../../general/calc/calc_display.dart';
import '../../general/card/no_padding_text_card.dart';

class LenConvDisplay extends StatelessWidget {
  const LenConvDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalcDisplay(
      children: <Widget>[
        NoPaddingTextCard(
          title: 'km',
          subtitle: '千米',
          text: 'K',
          radius: 20.0,
          shadowColor: Colors.transparent,
          trailing: SizedBox(
            child: Consumer<CalcModel>(
              builder: (context, calc, child) {
                return TextField(
                  autocorrect: false,
                  autofocus: true,
                  decoration: null,
                  controller: calc.expCtl,
                  enableSuggestions: false,
                  readOnly: true,
                  showCursor: true,
                  style: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.right,
                );
              },
            ),
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          onPressed: () {},
        ),
        NoPaddingTextCard(
          title: 'm',
          subtitle: '米',
          text: 'M',
          radius: 20.0,
          shadowColor: Colors.transparent,
          trailing: SizedBox(
            child: Consumer<CalcModel>(
              builder: (context, calc, child) {
                return TextField(
                  autocorrect: false,
                  autofocus: true,
                  decoration: null,
                  controller: calc.expCtl,
                  enableSuggestions: false,
                  readOnly: true,
                  showCursor: true,
                  style: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.right,
                );
              },
            ),
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

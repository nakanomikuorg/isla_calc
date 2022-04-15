import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/common/calc_model.dart';
import 'exp_text_field.dart';

class EntryCoreDisplay extends StatelessWidget {
  const EntryCoreDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Consumer<CalcModel>(
        builder: (context, calc, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ExpTextField(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 12.0,
                controller: calc.expCtl,
              ),
              Text(
                calc.currentAns,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 24.0,
                ),
              ),
            ],
          );
        },
      ),
      width: MediaQuery.of(context).size.width * 0.4,
    );
  }
}

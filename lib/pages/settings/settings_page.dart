import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/general/page/general_page.dart';
import '../../widgets/settings/appearance_settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      body: GeneralPageBody(
        title: S.of(context).globalSettingsTitle,
        emj: '⚒',
        children: const <Widget>[
          AppearanceSettings(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/general/page/settings_page.dart';
import '../../widgets/settings/appearance_settings.dart';

class GlobalSettingsPage extends StatelessWidget {
  const GlobalSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsPage(
      title: S.of(context).globalSettingsTitle,
      emj: '⚒',
      children: const <Widget>[
        AppearanceSettings(),
      ],
    );
  }
}

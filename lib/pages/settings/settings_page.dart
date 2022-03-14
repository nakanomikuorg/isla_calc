import 'package:flutter/material.dart';

import '../../widgets/common_widgets/blur_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: BlurAppBar(
        '',
        <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          )
        ],
      ),
      body: const SettingsBodyContent(),
    );
  }
}

class SettingsBodyContent extends StatelessWidget {
  const SettingsBodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

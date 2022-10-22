import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/settings/set_item_group.dart';

import 'multiple_choice_settings.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  Widget build(BuildContext context) {
    return const SetItemGroup(
      title: '⚙ 通用',
      children: [
        InitRouteSettings(),
        LangSettings(),
      ],
    );
  }
}

class InitRouteSettings extends StatefulWidget {
  const InitRouteSettings({Key? key}) : super(key: key);

  @override
  State<InitRouteSettings> createState() => _InitRouteSettingsState();
}

class _InitRouteSettingsState extends State<InitRouteSettings> {
  @override
  Widget build(BuildContext context) {
    return MultipleChoiceSettings(
      title: '初始页面',
      subtitle: '主页',
      onTap: () async {},
    );
  }
}

class LangSettings extends StatefulWidget {
  const LangSettings({Key? key}) : super(key: key);

  @override
  State<LangSettings> createState() => _LangSettingsState();
}

class _LangSettingsState extends State<LangSettings> {
  @override
  Widget build(BuildContext context) {
    return MultipleChoiceSettings(
      title: '语言 / Language',
      subtitle: '简体中文',
      onTap: () async {},
    );
  }
}

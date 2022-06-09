import 'package:calc_tool/calc_tool.dart';
import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/settings/set_item_group.dart';
import 'package:isla_calc/widgets/settings/switch_settings.dart';
import 'package:provider/provider.dart';

import '../../models/settings/theme_model.dart';
import '../general/dialog/blur_able_alert_dialog.dart';
import '../general/dialog/blur_able_simple_dialog.dart';
import 'custom_color_picker.dart';
import 'multiple_choice_settings.dart';

class AppearanceSettings extends StatefulWidget {
  const AppearanceSettings({Key? key}) : super(key: key);

  @override
  State<AppearanceSettings> createState() => _AppearanceSettingsState();
}

class _AppearanceSettingsState extends State<AppearanceSettings> {
  @override
  Widget build(BuildContext context) {
    return const SetItemGroup(
      title: '🌺 外观',
      children: [
        ThemeModeSettings(),
        StyleSetting(),
        ThemeColorSettings(),
        BlurSettings(),
      ],
    );
  }
}

class ThemeModeSettings extends StatefulWidget {
  const ThemeModeSettings({Key? key}) : super(key: key);

  @override
  State<ThemeModeSettings> createState() => _ThemeModeSettingsState();
}

class _ThemeModeSettingsState extends State<ThemeModeSettings> {
  Future<int?> _changeNightMode(BuildContext context) async {
    int? i = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return const BlurAbleSimpleDialog(
          title: '主题模式',
          options: <String>[
            '跟随系统',
            '日间模式',
            '夜间模式',
          ],
        );
      },
    );

    return i;
  }

  @override
  Widget build(BuildContext context) {
    return MultipleChoiceSettings(
      title: '主题模式',
      subtitle: '跟随系统',
      onTap: () async {
        int? mode = await _changeNightMode(context);
      },
    );
  }
}

class StyleSetting extends StatefulWidget {
  const StyleSetting({Key? key}) : super(key: key);

  @override
  State<StyleSetting> createState() => _StyleSettingState();
}

class _StyleSettingState extends State<StyleSetting> {
  @override
  Widget build(BuildContext context) {
    return MultipleChoiceSettings(
      title: '风格',
      subtitle: 'Material Design 3',
      onTap: () {},
    );
  }
}

class ThemeColorSettings extends StatefulWidget {
  const ThemeColorSettings({Key? key}) : super(key: key);

  @override
  State<ThemeColorSettings> createState() => _ThemeColorSettingsState();
}

class _ThemeColorSettingsState extends State<ThemeColorSettings> {
  late Color _currentColor;
  Color? _selectedColor;

  @override
  void initState() {
    super.initState();
    _currentColor = Provider.of<ThemeModel>(context, listen: false).color;
  }

  Future<bool?> _changeColor(BuildContext context) async {
    bool? b = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlurAbleAlertDialog(
          title: '主题配色',
          content: CustomColorPicker(
            pickerColor: _currentColor,
            onColorChanged: (Color color) {
              _selectedColor = color;
            },
          ),
        );
      },
    );

    return b;
  }

  @override
  Widget build(BuildContext context) {
    return MultipleChoiceSettings(
      title: '配色',
      subtitle: Tool.getColorStr(_currentColor),
      onTap: () async {
        bool? isChanged = await _changeColor(context);

        if (isChanged != null && isChanged) {
          setState(() {
            _currentColor = _selectedColor!;
          });

          Provider.of<ThemeModel>(
            context,
            listen: false,
          ).changeColor(_currentColor);
        }
      },
    );
  }
}

class BlurSettings extends StatelessWidget {
  const BlurSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchSettings(
      title: '高斯模糊',
      desc: '关闭或可提升性能',
      value: Provider.of<ThemeModel>(context, listen: false).isGaussianBlur,
      onChanged: (value) {
        Provider.of<ThemeModel>(context, listen: false)
            .changeGaussianBlur(value);
      },
    );
  }
}

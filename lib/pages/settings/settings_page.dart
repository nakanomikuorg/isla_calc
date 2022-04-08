import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/common_widgets/blur_able_alert_dialog.dart';
import 'package:provider/provider.dart';

import '../../models/settings/theme_model.dart';
import '../../themes/text_info.dart';
import '../../widgets/common_widgets/blur_able_simple_dialog.dart';
import '../../widgets/common_widgets/general_page.dart';
import '../../widgets/settings/custom_color_picker.dart';
import '../../widgets/settings/multiple_choice_settings.dart';
import '../../widgets/settings/switch_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late Color _currentColor;
  Color? _selectedColor;

  @override
  void initState() {
    super.initState();
    _currentColor = Provider.of<ThemeModel>(context, listen: false).color;
  }

  Future<int?> _changeNightMode(BuildContext context) async {
    int? i = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return const BlurAbleSimpleDialog(
          title: '主题模式',
          options: [
            '跟随系统',
            '日间模式',
            '夜间模式',
          ],
        );
      },
    );

    return i;
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
    return GeneralPage(
      body: GeneralPageBody(
        title: '全局设置',
        emj: '⚒',
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 16.0),
            child: Text(
              '🌺 外观',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontFamilyFallback: TextInfo.fontFamilyFallback,
                fontSize: 16.0,
              ),
            ),
          ),
          MultipleChoiceSettings(
            title: '主题模式',
            subtitle: '跟随系统',
            onTap: () async {
              int? mode = await _changeNightMode(context);
            },
          ),
          MultipleChoiceSettings(
            title: '风格',
            subtitle: 'Material Design 3',
            onTap: () {},
          ),
          MultipleChoiceSettings(
            title: '配色',
            subtitle:
                '#${_currentColor.red.toRadixString(16)}${_currentColor.green.toRadixString(16)}${_currentColor.blue.toRadixString(16)}',
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
          ),
          SwitchSettings(
            title: '高斯模糊',
            desc: '关闭或可提升性能',
            value:
                Provider.of<ThemeModel>(context, listen: false).isGaussianBlur,
            onChanged: (value) {
              Provider.of<ThemeModel>(context, listen: false)
                  .changeGaussianBlur(value);
            },
          ),
        ],
      ),
    );
  }
}

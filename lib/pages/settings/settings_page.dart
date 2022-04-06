import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/settings/theme_model.dart';
import '../../themes/text_info.dart';
import '../../widgets/common_widgets/general_page.dart';
import '../../widgets/settings/switch_settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      body: GeneralPageBody(
        title: '全局设置',
        emj: '⚒',
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 4.0),
            child: Text(
              '🧣 主题',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontFamilyFallback: TextInfo.fontFamilyFallback,
                fontSize: 16.0,
              ),
            ),
          ),
          SwitchSettings(
            title: '玻璃拟态',
            desc: '关闭或可提升性能',
            value:
                Provider.of<ThemeModel>(context, listen: false).isGaussianBlur,
            onChanged: (value) {
              Provider.of<ThemeModel>(context, listen: false)
                  .changeGaussianBlur(value);
            },
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 4.0),
            child: ListTile(
              title: Text('夜间模式'),
              subtitle: Text('跟随系统'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 4.0),
            child: ListTile(
              title: Text('风格'),
              subtitle: Text('Material Design 3'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/settings/set_item_group.dart';
import 'package:isla_calc/widgets/settings/switch_settings.dart';

class CalcSettings extends StatelessWidget {
  const CalcSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SetItemGroup(
      title: '🧮 计算',
      children: [
        HistorySettings(),
        RealTimeSettings(),
        ThousandsSettings(),
        VibrationSettings(),
        VoiceSettings(),
      ],
    );
  }
}

class HistorySettings extends StatelessWidget {
  const HistorySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchSettings(
      title: '历史记录',
      desc: '局部设置可覆盖此项',
      value: true,
      onChanged: (value) {},
    );
  }
}

class RealTimeSettings extends StatelessWidget {
  const RealTimeSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchSettings(
      title: '即时演算',
      desc: '实时预览计算结果',
      value: true,
      onChanged: (value) {},
    );
  }
}

class ThousandsSettings extends StatelessWidget {
  const ThousandsSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchSettings(
      title: '千分位',
      desc: '从个位数起每三位加一个逗号',
      value: true,
      onChanged: (value) {},
    );
  }
}

class VibrationSettings extends StatelessWidget {
  const VibrationSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchSettings(
      title: '按键震动',
      desc: '默认强度',
      value: true,
      onChanged: (value) {},
    );
  }
}

class VoiceSettings extends StatelessWidget {
  const VoiceSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchSettings(
      title: '语音报数',
      desc: '中文（普通话）',
      value: true,
      onChanged: (value) {},
    );
  }
}

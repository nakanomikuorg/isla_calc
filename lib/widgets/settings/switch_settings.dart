import 'package:flutter/material.dart';

class SwitchSettings extends StatefulWidget {
  const SwitchSettings({
    Key? key,
    required this.title,
    required this.desc,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final String desc;
  final bool value;
  final Function onChanged;

  @override
  State<SwitchSettings> createState() => _SwitchSettingsState();
}

class _SwitchSettingsState extends State<SwitchSettings> {
  bool _switchSelected = true;

  @override
  void initState() {
    super.initState();
    _switchSelected = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 0.0),
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text(widget.desc),
        trailing: Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
            widget.onChanged(value);
          },
        ),
      ),
    );
  }
}

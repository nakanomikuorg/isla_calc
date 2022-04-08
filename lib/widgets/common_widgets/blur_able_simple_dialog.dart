import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/settings/theme_model.dart';
import 'blur_widget.dart';

class BlurAbleSimpleDialog extends StatelessWidget {
  const BlurAbleSimpleDialog({
    Key? key,
    this.title,
    required this.options,
  }) : super(key: key);

  final String? title;
  final List<String> options;

  @override
  Widget build(BuildContext context) {
    var simpleDialogOptions = <SimpleDialogOption>[];

    for (var i = 0; i < options.length; i++) {
      simpleDialogOptions.add(
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, i);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(options[i]),
          ),
        ),
      );
    }

    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        return theme.isGaussianBlur
            ? BlurWidget(
                child: child!,
              )
            : child!;
      },
      child: SimpleDialog(
        title: title == null ? null : Text(title!),
        children: simpleDialogOptions,
      ),
    );
  }
}

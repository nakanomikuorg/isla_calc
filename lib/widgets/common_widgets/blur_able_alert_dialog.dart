import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/settings/theme_model.dart';
import 'blur_widget.dart';

class BlurAbleAlertDialog extends StatelessWidget {
  const BlurAbleAlertDialog({
    Key? key,
    this.title,
    this.content,
  }) : super(key: key);

  final String? title;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        return theme.isGaussianBlur
            ? BlurWidget(
                child: child!,
              )
            : child!;
      },
      child: AlertDialog(
        title: title == null ? null : Text(title!),
        content: content,
        actions: <Widget>[
          ElevatedButton(
            child: const Text('完成'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.primary,
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

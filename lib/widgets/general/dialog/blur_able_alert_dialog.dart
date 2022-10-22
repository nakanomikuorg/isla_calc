import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/settings/global_model.dart';
import '../decoration/blur_widget.dart';

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
    return Consumer<GlobalModel>(
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
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
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

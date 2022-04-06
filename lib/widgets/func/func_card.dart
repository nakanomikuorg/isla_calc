import 'package:flutter/material.dart';
import 'package:isla_calc/tool/tools.dart';

class FuncCard extends StatefulWidget {
  const FuncCard(this._title, this._subtitle, this._icon, this._pushName,
      {Key? key})
      : super(key: key);

  final String _title;
  final String? _subtitle;
  final IconData _icon;
  final String _pushName;

  @override
  State<FuncCard> createState() => _FuncCardState();
}

class _FuncCardState extends State<FuncCard> {
  _FuncCardState();

  @override
  Widget build(BuildContext context) {
    var scaleFactor = MediaQuery.of(context).textScaleFactor;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 0.0),
      child: ElevatedButton(
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          primary: Theme.of(context).colorScheme.surface,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        onPressed: () => {
          Navigator.pushNamed(
            context,
            widget._pushName,
          )
        },
        child: ListTile(
          leading: Container(
            width: scaleFactor * 40.0,
            height: scaleFactor * 40.0,
            decoration: BoxDecoration(
              color: Tool.nextBool()
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(scaleFactor * 20.0),
            ),
            child: Icon(
              widget._icon,
              size: scaleFactor * 24.0,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          title: Text(
            widget._title,
            style: TextStyle(
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          subtitle: widget._subtitle == null
              ? null
              : Text(
                  widget._subtitle!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
        ),
      ),
    );
  }
}

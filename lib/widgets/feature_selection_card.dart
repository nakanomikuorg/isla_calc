import 'package:flutter/material.dart';

class FeatureSelectionCommonCard extends StatefulWidget {
  const FeatureSelectionCommonCard(this._title, this._subtitle, this._icon,
      {Key? key})
      : super(key: key);

  final String _title;
  final String _subtitle;
  final IconData _icon;

  @override
  State<FeatureSelectionCommonCard> createState() =>
      _FeatureSelectionCommonCardState();
}

class _FeatureSelectionCommonCardState
    extends State<FeatureSelectionCommonCard> {
  _FeatureSelectionCommonCardState();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 20.0, 0.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).colorScheme.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: ListTile(
          leading: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              widget._icon,
              size: 24.0,
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
          subtitle: Text(
            widget._subtitle,
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureSelectionOtherCard extends StatefulWidget {
  const FeatureSelectionOtherCard(this._title, this._subtitle, this._icon,
      {Key? key})
      : super(key: key);

  final String _title;
  final String _subtitle;
  final IconData _icon;

  @override
  State<FeatureSelectionOtherCard> createState() =>
      _FeatureSelectionOtherCardState();
}

class _FeatureSelectionOtherCardState extends State<FeatureSelectionOtherCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).colorScheme.surface,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        ),
        child: ListTile(
          leading: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              widget._icon,
              size: 24.0,
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
          subtitle: Text(
            widget._subtitle,
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}

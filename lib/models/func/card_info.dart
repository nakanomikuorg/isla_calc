import 'package:flutter/material.dart';

class CardInfo {
  final String _cardTitle;
  final String? _cardSubtitle;
  final IconData _cardIconData;
  final String _pushName;

  const CardInfo(
    this._cardTitle,
    this._cardSubtitle,
    this._cardIconData,
    this._pushName,
  );

  IconData get cardIconData => _cardIconData;

  String? get cardSubtitle => _cardSubtitle;

  String get cardTitle => _cardTitle;

  String get pushName => _pushName;
}

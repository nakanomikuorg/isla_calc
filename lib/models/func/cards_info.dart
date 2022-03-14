import '../../models/func/card_info.dart';

class CardsInfo {
  final String _groupName;
  final List<CardInfo> _groupCardInfos;

  const CardsInfo(
    this._groupName,
    this._groupCardInfos,
  );

  List<CardInfo> get groupCardInfos => _groupCardInfos;

  String get groupName => _groupName;
}

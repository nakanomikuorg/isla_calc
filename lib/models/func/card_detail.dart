class CardDetail {
  final String _pushName;
  bool isFavourite;
  int lastUseTime;

  CardDetail(
    this._pushName,
    this.isFavourite,
    this.lastUseTime,
  );

  String get pushName => _pushName;

  bool operator <(CardDetail other) {
    return lastUseTime < other.lastUseTime;
  }

  bool operator <=(CardDetail other) {
    return lastUseTime <= other.lastUseTime;
  }

  bool operator >(CardDetail other) {
    return lastUseTime > other.lastUseTime;
  }

  bool operator >=(CardDetail other) {
    return lastUseTime >= other.lastUseTime;
  }
}

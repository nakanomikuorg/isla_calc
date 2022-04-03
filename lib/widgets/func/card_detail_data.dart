import 'package:shared_preferences/shared_preferences.dart';

import '../../models/func/card_detail.dart';

class CardDetailData {
  static final _cardDetails = <String, CardDetail>{};

  static Future<bool> getIsFavouriteOf(String pushName) async {
    if (_cardDetails.containsKey(pushName)) {
      return _cardDetails[pushName]!.isFavourite;
    } else {
      var c = await _loadCardDetail(pushName);
      _cardDetails[pushName] = c;

      return c.isFavourite;
    }
  }

  static void setIsFavouriteOf(String pushName, bool isFavourite) async {
    if (_cardDetails.containsKey(pushName)) {
      _cardDetails[pushName]!.isFavourite = isFavourite;
      _saveIsFavourite(pushName, isFavourite);
    } else {
      var c = await _loadCardDetail(pushName);
      c.isFavourite = isFavourite;

      _saveIsFavourite(pushName, isFavourite);
    }
  }

  static Future<int> getLastUseTime(String pushName) async {
    if (_cardDetails.containsKey(pushName)) {
      return _cardDetails[pushName]!.lastUseTime;
    } else {
      var c = await _loadCardDetail(pushName);
      _cardDetails[pushName] = c;

      return c.lastUseTime;
    }
  }

  static void setLastUseTime(String pushName) async {
    var useTime = DateTime.now().millisecondsSinceEpoch;

    if (_cardDetails.containsKey(pushName)) {
      _cardDetails[pushName]!.lastUseTime = useTime;
      _saveLastUseTime(pushName, useTime);
    } else {
      var c = await _loadCardDetail(pushName);
      c.lastUseTime = useTime;

      _saveLastUseTime(pushName, useTime);
    }
  }

  static Future<CardDetail> _loadCardDetail(String pushName) async {
    return CardDetail(
      pushName,
      await _loadIsFavourite(pushName),
      await _loadLastUseTime(pushName),
    );
  }

  static Future<bool> _loadIsFavourite(String pushName) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(pushName) ?? false;
  }

  static void _saveIsFavourite(String pushName, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(pushName, value);
  }

  static Future<int> _loadLastUseTime(String pushName) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(pushName) ?? 0;
  }

  static void _saveLastUseTime(String pushName, int value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(pushName, value);
  }
}

import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';
import 'func_card_info_data.dart';

class FuncCardsInfoData {
  /// 艾拉首页
  static List<CardsInfo> getHomePageInfos(BuildContext context) {
    return <CardsInfo>[
      getCommonCalcInfo(context),
      getMoreInfo(context),
    ];
  }

  /// 常规计算
  static CardsInfo getCommonCalcInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).commonsTitle,
      <CardInfo>[
        ...FuncCardInfoData.getCommonCalc(context).sublist(0, 3),
        FuncCardInfoData.getCommonCalcMore(context),
      ],
    );
  }

  /// 所有常规计算
  static CardsInfo getAllCommonCalcInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).commonsTitle,
      FuncCardInfoData.getCommonCalc(context),
    );
  }

  /// 更多
  static CardsInfo getMoreInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).moreTitle,
      <CardInfo>[
        FuncCardInfoData.getGlobalSettings(context),
        FuncCardInfoData.getRelatedInstructions(context),
        FuncCardInfoData.getAboutTheApp(context),
      ],
    );
  }

  /// 单位转换
  static List<CardsInfo> getUnitConvInfos(BuildContext context) {
    return <CardsInfo>[
      getBaseUnitInfo(context),
      getCommonUnitInfo(context),
    ];
  }

  static String _getBaseUnitStr(BuildContext context) {
    return S.of(context).baseUnitTitle;
  }

  /// 基本单位
  static CardsInfo getBaseUnitInfo(BuildContext context) {
    return CardsInfo(
      _getBaseUnitStr(context),
      <CardInfo>[
        ...FuncCardInfoData.getBaseUnit(context).sublist(0, 3),
        FuncCardInfoData.getBaseUnitMore(context),
      ],
    );
  }

  /// 所有基本单位
  static CardsInfo getAllBaseUnitInfo(BuildContext context) {
    return CardsInfo(
      _getBaseUnitStr(context),
      FuncCardInfoData.getBaseUnit(context),
    );
  }

  /// 常用单位
  static CardsInfo getCommonUnitInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).commonUnitTitle,
      <CardInfo>[
        ...FuncCardInfoData.getCommonUnit(context).sublist(0, 3),
        FuncCardInfoData.getCommonUnitMore(context),
      ],
    );
  }

  /// 所有常用单位
  static CardsInfo getAllCommonUnitInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).commonUnitTitle,
      FuncCardInfoData.getCommonUnit(context),
    );
  }

  /// 特殊计算
  static List<CardsInfo> getSpecialCalcInfos(BuildContext context) {
    return <CardsInfo>[
      getDailyLifeInfo(context),
      getDateTimeInfo(context),
      getFinancialManagementInfo(context),
    ];
  }

  /// 日常生活
  static CardsInfo getDailyLifeInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).dailyLifeTitle,
      <CardInfo>[
        ...FuncCardInfoData.getDailyLife(context).sublist(0, 3),
        FuncCardInfoData.getDailyLifeMore(context),
      ],
    );
  }

  /// 所有日常生活
  static CardsInfo getAllDailyLifeInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).dailyLifeTitle,
      FuncCardInfoData.getDailyLife(context),
    );
  }

  /// 日期时间
  static CardsInfo getDateTimeInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).dateTimeTitle,
      <CardInfo>[
        ...FuncCardInfoData.getDateTime(context).sublist(0, 3),
        FuncCardInfoData.getDateTimeMore(context),
      ],
    );
  }

  /// 所有日期时间
  static CardsInfo getAllDateTimeInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).dateTimeTitle,
      FuncCardInfoData.getDateTime(context),
    );
  }

  /// 金融理财
  static CardsInfo getFinancialManagementInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).financialManagementTitle,
      <CardInfo>[
        ...FuncCardInfoData.getFinancialManagement(context).sublist(0, 3),
        FuncCardInfoData.getFinancialManagementMore(context),
      ],
    );
  }

  /// 所有金融理财
  static CardsInfo getAllFinancialManagementInfo(BuildContext context) {
    return CardsInfo(
      S.of(context).financialManagementTitle,
      FuncCardInfoData.getFinancialManagement(context),
    );
  }
}

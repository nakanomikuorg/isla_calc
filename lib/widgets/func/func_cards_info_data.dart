import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';
import 'func_card_info_data.dart';

class FuncCardsInfoData {
  /// 艾拉首页
  static const homePageCardsInfos = <CardsInfo>[
    commonCalcCardsInfo,
    moreCardsInfo,
  ];

  /// 常规计算
  static const commonCalcCardsInfo = CardsInfo(
    '✒ 常规计算',
    <CardInfo>[
      FuncCardInfoData.standardCalc,
      FuncCardInfoData.scientificCalc,
      FuncCardInfoData.fractionCalc,
      FuncCardInfoData.commonCalcMore,
    ],
  );

  /// 更多
  static const moreCardsInfo = CardsInfo(
    '📦 更多',
    <CardInfo>[
      FuncCardInfoData.globalSettings,
      FuncCardInfoData.relatedInstructions,
      FuncCardInfoData.aboutTheApp,
    ],
  );

  /// 单位转换
  static const unitConvCardsInfos = <CardsInfo>[
    baseUnitCardsInfo,
  ];

  /// 基本单位
  static const baseUnitCardsInfo = CardsInfo(
    '🧊 基本单位',
    <CardInfo>[
      FuncCardInfoData.lenConv,
      FuncCardInfoData.massConv,
      FuncCardInfoData.timeConv,
      FuncCardInfoData.baseUnitMore,
    ],
  );

  /// 特殊计算
  static const specialCalcCardsInfos = <CardsInfo>[
    dailyLifeInfo,
    dateTimeInfo,
    financialManagementCardsInfo,
  ];

  /// 日常生活
  static const dailyLifeInfo = CardsInfo(
    '🏓 日常生活',
    <CardInfo>[
      FuncCardInfoData.relativesConv,
      FuncCardInfoData.bMI,
      FuncCardInfoData.foodCalorieCalc,
      FuncCardInfoData.dailyLifeMore,
    ],
  );

  /// 日期时间
  static const dateTimeInfo = CardsInfo(
    '🗓️ 日期时间',
    <CardInfo>[
      FuncCardInfoData.zodiacCalc,
      FuncCardInfoData.birthdayCalc,
      FuncCardInfoData.countdown,
      FuncCardInfoData.dateTimeMore,
    ],
  );

  /// 金融理财
  static const financialManagementCardsInfo = CardsInfo(
    '💰 金融理财',
    <CardInfo>[
      FuncCardInfoData.mortgageCalc,
      FuncCardInfoData.loanCalc,
      FuncCardInfoData.personalTaxCalc,
      FuncCardInfoData.financialManagementMore,
    ],
  );
}

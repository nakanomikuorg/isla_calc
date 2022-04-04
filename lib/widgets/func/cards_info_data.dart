import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';
import 'card_info_data.dart';

class CardsInfoData {
  /// 艾拉首页
  static const homePageCardsInfos = <CardsInfo>[
    commonCalcCardsInfo,
    moreCardsInfo,
  ];

  /// 常规计算
  static const commonCalcCardsInfo = CardsInfo(
    '📗 常规计算',
    <CardInfo>[
      CardInfoData.standardCalc,
      CardInfoData.scientificCalc,
      CardInfoData.fractionCalc,
      CardInfoData.commonCalcMore,
    ],
  );

  /// 更多
  static const moreCardsInfo = CardsInfo(
    '📦 更多',
    <CardInfo>[
      CardInfoData.globalSettings,
      CardInfoData.relatedInstructions,
      CardInfoData.aboutTheApp,
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
      CardInfoData.lenConv,
      CardInfoData.massConv,
      CardInfoData.timeConv,
      CardInfoData.baseUnitMore,
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
      CardInfoData.relativesConv,
      CardInfoData.bMI,
      CardInfoData.foodCalorieCalc,
      CardInfoData.dailyLifeMore,
    ],
  );

  /// 日期时间
  static const dateTimeInfo = CardsInfo(
    '🗓️ 日期时间',
    <CardInfo>[
      CardInfoData.zodiacCalc,
      CardInfoData.birthdayCalc,
      CardInfoData.countdown,
      CardInfoData.dateTimeMore,
    ],
  );

  /// 金融理财
  static const financialManagementCardsInfo = CardsInfo(
    '💰 金融理财',
    <CardInfo>[
      CardInfoData.mortgageCalc,
      CardInfoData.loanCalc,
      CardInfoData.personalTaxCalc,
      CardInfoData.financialManagementMore,
    ],
  );
}

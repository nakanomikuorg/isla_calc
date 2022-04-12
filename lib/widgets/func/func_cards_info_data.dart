import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';
import 'func_card_info_data.dart';

class FuncCardsInfoData {
  /// 艾拉首页
  static const homePageInfos = <CardsInfo>[
    commonCalcInfo,
    moreInfo,
  ];

  static const _commonCalcStr = '✒ 常规计算';

  /// 常规计算
  static const commonCalcInfo = CardsInfo(
    _commonCalcStr,
    <CardInfo>[
      FuncCardInfoData.standardCalc,
      FuncCardInfoData.scientificCalc,
      FuncCardInfoData.fractionCalc,
      FuncCardInfoData.commonCalcMore,
    ],
  );

  /// 所有常规计算
  static const allCommonCalcInfo = CardsInfo(
    _commonCalcStr,
    FuncCardInfoData.commonCalc,
  );

  /// 更多
  static const moreInfo = CardsInfo(
    '📦 更多',
    <CardInfo>[
      FuncCardInfoData.globalSettings,
      FuncCardInfoData.relatedInstructions,
      FuncCardInfoData.aboutTheApp,
    ],
  );

  /// 单位转换
  static const unitConvInfos = <CardsInfo>[
    baseUnitInfo,
    commonUnitInfo,
  ];

  static const _baseUnitStr = '🧊 基本单位';

  /// 基本单位
  static const baseUnitInfo = CardsInfo(
    _baseUnitStr,
    <CardInfo>[
      FuncCardInfoData.lenConv,
      FuncCardInfoData.massConv,
      FuncCardInfoData.timeConv,
      FuncCardInfoData.baseUnitMore,
    ],
  );

  /// 所有基本单位
  static const allBaseUnitInfo = CardsInfo(
    _baseUnitStr,
    FuncCardInfoData.baseUnit,
  );

  static const _commonUnitStr = '📍 常用单位';

  /// 常用单位
  static const commonUnitInfo = CardsInfo(
    _commonUnitStr,
    <CardInfo>[
      FuncCardInfoData.areaConv,
      FuncCardInfoData.pressureConv,
      FuncCardInfoData.energyConv,
      FuncCardInfoData.commonUnitMore,
    ],
  );

  /// 所有常用单位
  static const allCommonUnitInfo = CardsInfo(
    _commonUnitStr,
    FuncCardInfoData.commonUnit,
  );

  /// 特殊计算
  static const specialCalcInfos = <CardsInfo>[
    dailyLifeInfo,
    dateTimeInfo,
    financialManagementInfo,
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
  static const financialManagementInfo = CardsInfo(
    '💰 金融理财',
    <CardInfo>[
      FuncCardInfoData.mortgageCalc,
      FuncCardInfoData.loanCalc,
      FuncCardInfoData.personalTaxCalc,
      FuncCardInfoData.financialManagementMore,
    ],
  );
}

import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';
import 'card_info_data.dart';

class CardsInfoData {
  static const commonCalcCardsInfo = CardsInfo(
    ' 📗 常规计算',
    <CardInfo>[
      CardInfoData.standardCalc,
      CardInfoData.scientificCalc,
      CardInfoData.fractionCalc,
      CardInfoData.commonCalcMore,
    ],
  );

  static const moreCardsInfo = CardsInfo(
    ' 📦 更多',
    <CardInfo>[
      CardInfoData.globalSettings,
      CardInfoData.relatedInstructions,
      CardInfoData.aboutTheApp,
    ],
  );

  static final commonCalcOtherCardsInfos = <CardsInfo>[
    commonCalcCardsInfo,
    moreCardsInfo,
  ];

  static const baseUnitCardsInfo = CardsInfo(
    ' 🧊 基本单位',
    <CardInfo>[
      CardInfoData.lenConv,
      CardInfoData.massConv,
      CardInfoData.timeConv,
      CardInfoData.baseUnitMore,
    ],
  );

  static final unitConvOtherCardsInfos = <CardsInfo>[
    baseUnitCardsInfo,
  ];

  static const dailyLifeInfo = CardsInfo(
    ' 🏓 日常生活',
    <CardInfo>[
      CardInfoData.relativesConv,
      CardInfoData.bMI,
      CardInfoData.foodCalorieCalc,
      CardInfoData.dailyLifeMore,
    ],
  );

  static const dateTimeInfo = CardsInfo(
    ' 🗓️ 日期时间',
    <CardInfo>[
      CardInfoData.zodiacCalc,
      CardInfoData.birthdayCalc,
      CardInfoData.countdown,
      CardInfoData.dateTimeMore,
    ],
  );

  static const financialManagementCardsInfo = CardsInfo(
    ' 💸 金融理财',
    <CardInfo>[
      CardInfoData.mortgageCalc,
      CardInfoData.loanCalc,
      CardInfoData.personalTaxCalc,
      CardInfoData.financialManagementMore,
    ],
  );

  static final specialCalcOtherCardsInfos = <CardsInfo>[
    dailyLifeInfo,
    dateTimeInfo,
    financialManagementCardsInfo,
  ];
}

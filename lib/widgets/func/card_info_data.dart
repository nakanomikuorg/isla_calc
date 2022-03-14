import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';

class CardInfosData {
  // 艾拉首页
  // 常规计算
  /// 标准计算器
  static const standardCalc = CardInfo(
    '标准计算器',
    '基本计算',
    Icons.calculate_outlined,
    '/standard-calc',
  );

  /// 科学计算器
  static const scientificCalc = CardInfo(
    '科学计算器',
    '类卡西欧',
    Icons.analytics_outlined,
    '/scientific-calc',
  );

  /// 分数计算器
  static const fractionCalc = CardInfo(
    '分数计算器',
    '分数键盘',
    Icons.ballot_outlined,
    '/fraction-calc',
  );

  /// 进制转换
  static const baseConv = CardInfo(
    '进制转换',
    '十进制、二进制...',
    Icons.looks_two_outlined,
    '/base-conv',
  );

  /// 逻辑计算器
  static const logicCalc = CardInfo(
    '逻辑计算器',
    '或、且、非...',
    Icons.check_circle_outline_rounded,
    '/logic-calc',
  );

  /// 位计算器
  static const bitCalc = CardInfo(
    '位计算器',
    '与、或...',
    Icons.exposure_zero_rounded,
    '/bit-calc',
  );

  /// Desmos
  static const desmos = CardInfo(
    'Desmos',
    'WebView',
    Icons.show_chart_rounded,
    '/desmos',
  );

  /// 更多（常规计算）
  static const commonCalcMore = CardInfo(
    '更多...',
    '逻辑计算器、位计算器...',
    Icons.more_horiz_rounded,
    '/common-calc-more',
  );

  static final commonCalc = <CardInfo>[
    standardCalc,
    scientificCalc,
    fractionCalc,
    baseConv,
    logicCalc,
    bitCalc,
    desmos,
  ];

  static const commonCalcCardsInfo = CardsInfo(
    ' 📗 常规计算',
    <CardInfo>[
      standardCalc,
      scientificCalc,
      fractionCalc,
      commonCalcMore,
    ],
  );

  // 更多
  /// 全局设置
  static const globalSettings = CardInfo(
    '全局设置',
    '主题、位数...',
    Icons.settings,
    '/global-settings',
  );

  /// 相关说明
  static const relatedInstructions = CardInfo(
    '相关说明',
    '使用技巧',
    Icons.book_outlined,
    '/related-instructions',
  );

  /// 关于应用
  static const aboutTheApp = CardInfo(
    '关于应用',
    '参与贡献',
    Icons.info_outline_rounded,
    '/about-the-app',
  );

  static const moreCardsInfo = CardsInfo(
    ' 📦 更多',
    <CardInfo>[
      globalSettings,
      relatedInstructions,
      aboutTheApp,
    ],
  );

  static final commonCalcOtherCardsInfos = <CardsInfo>[
    commonCalcCardsInfo,
    moreCardsInfo,
  ];

  // 单位转换
  // 基本单位
  /// 长度换算
  static const lenConv = CardInfo(
    '长度换算',
    '米、千米...',
    Icons.straighten_outlined,
    '/len-conv',
  );

  /// 质量换算
  static const massConv = CardInfo(
    '质量换算',
    '千克、吨...',
    Icons.inventory_2_rounded,
    '/mass-conv',
  );

  /// 时间换算
  static const timeConv = CardInfo(
    '时间换算',
    '秒、分...',
    Icons.schedule_rounded,
    '/time-conv',
  );

  /// 电流换算
  static const currentConv = CardInfo(
    '电流换算',
    '安培、毫安...',
    Icons.flash_on_rounded,
    '/current-conv',
  );

  /// 温度换算
  static const tempConv = CardInfo(
    '温度换算',
    '安培、毫安...',
    Icons.thermostat_rounded,
    '/temp-conv',
  );

  /// 物质的量

  /// 发光强度

  /// 更多（基本单位）
  static const baseUnitMore = CardInfo(
    '更多...',
    '电流换算、温度换算...',
    Icons.more_horiz_rounded,
    '/base-unit-more',
  );

  static final baseUnitConv = <CardInfo>[
    lenConv,
    massConv,
    timeConv,
    currentConv,
    tempConv,
  ];

  static const baseUnitCardsInfo = CardsInfo(
    ' 🧊 基本单位',
    <CardInfo>[
      lenConv,
      massConv,
      timeConv,
      baseUnitMore,
    ],
  );

  static final unitConvOtherCardsInfos = <CardsInfo>[
    baseUnitCardsInfo,
  ];

  // 特殊计算
  // 日常生活
  /// 亲戚称呼
  static const relativesConv = CardInfo(
    '亲戚称呼',
    '称呼互查',
    Icons.family_restroom_rounded,
    '/relatives-conv',
  );

  /// BMI 指数
  static const bMI = CardInfo(
    'BMI 指数',
    '身体质量指数',
    Icons.sports_soccer_rounded,
    '/bmi',
  );

  /// 食物热量
  static const foodCalorieCalc = CardInfo(
    '食物热量',
    '食物卡路里',
    Icons.fastfood_outlined,
    '/food-calorie-calc',
  );

  /// 运动热量
  static const exerCalorieCalc = CardInfo(
    '运动热量',
    '运动卡路里消耗',
    Icons.surfing_rounded,
    '/exer-calorie-calc',
  );

  /// 油耗量换算
  static const fuelConsumptionConv = CardInfo(
    '油耗量换算',
    '百公里油耗...',
    Icons.local_gas_station_rounded,
    '/fuel-consumption-conv',
  );

  /// 游戏价格
  static const gamePriceCalc = CardInfo(
    '游戏价格',
    'Switch 游戏实际价格...',
    Icons.sports_esports_outlined,
    '/game-price-calc',
  );

  /// 更多（日常生活）
  static const dailyLifeMore = CardInfo(
    '更多...',
    '运动热量、油耗量换算...',
    Icons.more_horiz_rounded,
    '/daily-life-more',
  );

  static final dailyLife = <CardInfo>[
    relativesConv,
    bMI,
    foodCalorieCalc,
    exerCalorieCalc,
    fuelConsumptionConv,
    gamePriceCalc,
  ];

  static const dailyLifeInfo = CardsInfo(
    ' 🏓 日常生活',
    <CardInfo>[
      relativesConv,
      bMI,
      foodCalorieCalc,
      dailyLifeMore,
    ],
  );

  // 日期时间
  /// 生肖计算
  static const zodiacCalc = CardInfo(
    '生肖计算',
    '生肖、年份互查',
    Icons.cruelty_free_rounded,
    '/zodiac-calc',
  );

  /// 生日计算
  static const birthdayCalc = CardInfo(
    '生日计算',
    '已度过的天数...',
    Icons.cake_outlined,
    '/birthday-calc',
  );

  /// 倒数日
  static const countdown = CardInfo(
    '倒数日',
    '日期倒数...',
    Icons.event_available_rounded,
    '/countdown',
  );

  /// 日期间隔
  static const dateInterval = CardInfo(
    '日期间隔',
    '日期计算 / 推算',
    Icons.date_range_rounded,
    '/date-interval',
  );

  /// 历法转换
  static const calendarConv = CardInfo(
    '历法转换',
    '公历、农历...',
    Icons.brightness_6_rounded,
    '/date-interval',
  );

  /// 时区转换
  static const timeZoneConv = CardInfo(
    '时区转换',
    '时区转换 / 世界时间',
    Icons.public_rounded,
    '/time-zone-conv',
  );

  /// 更多（日期时间）
  static const dateTimeMore = CardInfo(
    '更多...',
    '日期间隔、历法转换...',
    Icons.more_horiz_rounded,
    '/date-time-more',
  );

  static final dateTime = <CardInfo>[
    zodiacCalc,
    birthdayCalc,
    countdown,
    dateInterval,
    calendarConv,
    timeZoneConv,
  ];

  static const dateTimeInfo = CardsInfo(
    ' 🗓️ 日期时间',
    <CardInfo>[
      zodiacCalc,
      birthdayCalc,
      countdown,
      dateTimeMore,
    ],
  );

  // 金融理财
  /// 房贷计算
  static const mortgageCalc = CardInfo(
    '房贷计算',
    '商业贷款、公积金...',
    Icons.home_rounded,
    '/mortgage-calc',
  );

  /// 贷款计算
  static const loanCalc = CardInfo(
    '贷款计算',
    '普通贷款',
    Icons.monetization_on_outlined,
    '/loan-calc',
  );

  /// 个税计算
  static const personalTaxCalc = CardInfo(
    '个税计算',
    '年终奖、五险一金...',
    Icons.money_off_rounded,
    '/personal-tax-calc',
  );

  /// 理财计算
  static const financialCalc = CardInfo(
    '理财计算',
    '复利、定投...',
    Icons.attach_money_rounded,
    '/personal-tax-calc',
  );

  /// 汇率换算
  static const exchangeRateConv = CardInfo(
    '汇率换算',
    '法币、数字货币...',
    Icons.currency_pound_rounded,
    '/exchange-rate-conv',
  );

  /// 大写金额
  static const capitalizeAmount = CardInfo(
    '大写金额',
    '人民币大写金额',
    Icons.currency_yen_rounded,
    '/capitalize-amount',
  );

  /// 优惠金额
  static const discountedPriceCalc = CardInfo(
    '优惠金额',
    '打折优惠、满减...',
    Icons.currency_yen_rounded,
    '/discounted-price-calc',
  );

  /// TVM 计算
  static const tVMCalc = CardInfo(
    'TVM 计算',
    '货币时间价值',
    Icons.currency_exchange_rounded,
    '/tvm-calc',
  );

  /// 数字货币
  static const digitalCurrencyCalc = CardInfo(
    '数字货币',
    '数字货币相关计算',
    Icons.currency_exchange_rounded,
    '/digital-currency-calc',
  );

  /// 更多（金融理财）
  static const financialManagementMore = CardInfo(
    '更多...',
    '理财计算、汇率换算...',
    Icons.more_horiz_rounded,
    '/financial-management-more',
  );

  static final financialManagement = <CardInfo>[
    mortgageCalc,
    loanCalc,
    personalTaxCalc,
    financialCalc,
    exchangeRateConv,
    capitalizeAmount,
    discountedPriceCalc,
    tVMCalc,
    digitalCurrencyCalc,
  ];

  static const financialManagementCardsInfo = CardsInfo(
    ' 💸 金融理财',
    <CardInfo>[
      mortgageCalc,
      loanCalc,
      personalTaxCalc,
      financialManagementMore,
    ],
  );

  static final specialCalcOtherCardsInfos = <CardsInfo>[
    dailyLifeInfo,
    dateTimeInfo,
    financialManagementCardsInfo,
  ];

  // 专业领域
  // 建筑工程

  static Future<bool> getCardInfoIsFavourite(String pushName) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(pushName) ?? false;
  }

  static void setCardInfoIsFavourite(String pushName, bool isFavourite) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(pushName, isFavourite);
  }
}

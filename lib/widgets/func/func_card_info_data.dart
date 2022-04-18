import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/func/card_info.dart';

class FuncCardInfoData {
  static String _getMoreText(BuildContext context) {
    return S.of(context).moreText;
  }

  // 艾拉首页
  /// 常规计算
  static List<CardInfo> getCommonCalc(BuildContext context) {
    return <CardInfo>[
      getStandardCalc(context),
      getScientificCalc(context),
      getFractionCalc(context),
      getBaseConv(context),
      getLogicCalc(context),
      getBitCalc(context),
      getDesmos(context),
    ];
  }

  /// 标准计算器
  static CardInfo getStandardCalc(BuildContext context) {
    return CardInfo(
      S.of(context).standardCalcTitle,
      S.of(context).standardCalcDesc,
      Icons.calculate_outlined,
      '/standard-calc',
    );
  }

  /// 科学计算器
  static CardInfo getScientificCalc(BuildContext context) {
    return CardInfo(
      S.of(context).scientificCalcTitle,
      S.of(context).scientificCalcDesc,
      Icons.analytics_outlined,
      '/scientific-calc',
    );
  }

  /// 分数计算器
  static CardInfo getFractionCalc(BuildContext context) {
    return CardInfo(
      S.of(context).fractionCalcTitle,
      S.of(context).fractionCalcDesc,
      Icons.ballot_outlined,
      '/fraction-calc',
    );
  }

  /// 进制转换
  static CardInfo getBaseConv(BuildContext context) {
    return CardInfo(
      S.of(context).baseConvTitle,
      S.of(context).baseConvDesc,
      Icons.looks_two_outlined,
      '/base-conv',
    );
  }

  /// 逻辑运算
  static CardInfo getLogicCalc(BuildContext context) {
    return CardInfo(
      S.of(context).logicCalcTitle,
      S.of(context).logicCalcDesc,
      Icons.check_circle_outline_rounded,
      '/logic-calc',
    );
  }

  /// 位运算
  static CardInfo getBitCalc(BuildContext context) {
    return CardInfo(
      S.of(context).bitCalcTitle,
      S.of(context).bitCalcDesc,
      Icons.exposure_zero_rounded,
      '/bit-calc',
    );
  }

  /// Desmos
  static CardInfo getDesmos(BuildContext context) {
    return CardInfo(
      S.of(context).desmosTitle,
      S.of(context).desmosDesc,
      Icons.show_chart_rounded,
      '/desmos',
    );
  }

  /// 更多（常规计算）
  static CardInfo getCommonCalcMore(BuildContext context) {
    return CardInfo(
      _getMoreText(context),
      S.of(context).commonCalcMoreDesc,
      Icons.more_horiz_rounded,
      '/common-calc-more',
    );
  }

  /// 全局设置
  static CardInfo getGlobalSettings(BuildContext context) {
    return CardInfo(
      S.of(context).globalSettingsTitle,
      S.of(context).globalSettingsDesc,
      Icons.settings,
      '/global-settings',
    );
  }

  /// 相关说明
  static CardInfo getRelatedInstructions(BuildContext context) {
    return CardInfo(
      S.of(context).relatedInstructionsTitle,
      S.of(context).relatedInstructionsDesc,
      Icons.book_outlined,
      '/related-instructions',
    );
  }

  /// 关于应用
  static CardInfo getAboutTheApp(BuildContext context) {
    return CardInfo(
      S.of(context).aboutTheAppTitle,
      S.of(context).aboutTheAppDesc,
      Icons.info_outline_rounded,
      '/about-the-app',
    );
  }

  // 单位转换
  /// 基本单位
  static List<CardInfo> getBaseUnit(BuildContext context) {
    return <CardInfo>[
      getLenConv(context),
      getMassConv(context),
      getTimeConv(context),
      getCurrentConv(context),
      getTempConv(context),
      getMolarMassConv(context),
      getLightIntensityConv(context),
    ];
  }

  /// 长度换算
  static CardInfo getLenConv(BuildContext context) {
    return CardInfo(
      S.of(context).lenConvTitle,
      S.of(context).lenConvDesc,
      Icons.straighten_outlined,
      '/len-conv',
    );
  }

  /// 质量换算
  static CardInfo getMassConv(BuildContext context) {
    return CardInfo(
      S.of(context).massConvTitle,
      S.of(context).massConvDesc,
      Icons.inventory_2_rounded,
      '/mass-conv',
    );
  }

  /// 时间换算
  static CardInfo getTimeConv(BuildContext context) {
    return CardInfo(
      S.of(context).timeConvTitle,
      S.of(context).timeConvDesc,
      Icons.schedule_rounded,
      '/time-conv',
    );
  }

  /// 电流换算
  static CardInfo getCurrentConv(BuildContext context) {
    return CardInfo(
      S.of(context).currentConvTitle,
      S.of(context).currentConvDesc,
      Icons.flash_on_rounded,
      '/current-conv',
    );
  }

  /// 温度换算
  static CardInfo getTempConv(BuildContext context) {
    return CardInfo(
      S.of(context).tempConvTitle,
      S.of(context).tempConvDesc,
      Icons.thermostat_rounded,
      '/temp-conv',
    );
  }

  /// 摩尔质量
  static CardInfo getMolarMassConv(BuildContext context) {
    return CardInfo(
      S.of(context).molarMassConvTitle,
      S.of(context).molarMassConvDesc,
      Icons.co2_rounded,
      '/molar-mass-conv',
    );
  }

  /// 发光强度
  static CardInfo getLightIntensityConv(BuildContext context) {
    return CardInfo(
      S.of(context).lightIntensityConvTitle,
      S.of(context).lightIntensityConvDesc,
      Icons.emoji_objects_outlined,
      '/light-intensity-conv',
    );
  }

  /// 更多（基本单位）
  static CardInfo getBaseUnitMore(BuildContext context) {
    return CardInfo(
      _getMoreText(context),
      S.of(context).baseUnitMoreDesc,
      Icons.more_horiz_rounded,
      '/base-unit-more',
    );
  }

  /// 常用单位
  static List<CardInfo> getCommonUnit(BuildContext context) {
    return <CardInfo>[
      getAreaConv(context),
      getPressureConv(context),
      getEnergyConv(context),
      getPowerConv(context),
      getForceConv(context),
      getVelocityConv(context),
      getAngleConv(context),
      getDataStorageConv(context),
    ];
  }

  /// 面积换算
  static CardInfo getAreaConv(BuildContext context) {
    return CardInfo(
      S.of(context).areaConvTitle,
      S.of(context).areaConvDesc,
      Icons.grid_3x3_rounded,
      '/area-conv',
    );
  }

  /// 压力换算
  static CardInfo getPressureConv(BuildContext context) {
    return CardInfo(
      S.of(context).pressureConvTitle,
      S.of(context).pressureConvDesc,
      Icons.compress_rounded,
      '/pressure-conv',
    );
  }

  /// 能量和功
  static CardInfo getEnergyConv(BuildContext context) {
    return CardInfo(
      S.of(context).energyConvTitle,
      S.of(context).energyConvDesc,
      Icons.whatshot_rounded,
      '/energy-conv',
    );
  }

  /// 功率转换
  static CardInfo getPowerConv(BuildContext context) {
    return CardInfo(
      S.of(context).powerConvTitle,
      S.of(context).powerConvDesc,
      Icons.power_rounded,
      '/power-conv',
    );
  }

  /// 力转换
  static CardInfo getForceConv(BuildContext context) {
    return CardInfo(
      S.of(context).forceConvTitle,
      S.of(context).forceConvDesc,
      Icons.waving_hand_rounded,
      '/force-conv',
    );
  }

  /// 速度转换
  static CardInfo getVelocityConv(BuildContext context) {
    return CardInfo(
      S.of(context).velocityConvTitle,
      S.of(context).velocityConvDesc,
      Icons.speed_rounded,
      '/velocity-conv',
    );
  }

  /// 角度转换
  static CardInfo getAngleConv(BuildContext context) {
    return CardInfo(
      S.of(context).angleConvTitle,
      S.of(context).angleConvDesc,
      Icons.arrow_back_ios_rounded,
      '/angle-conv',
    );
  }

  /// 储存容量
  static CardInfo getDataStorageConv(BuildContext context) {
    return CardInfo(
      S.of(context).dataStorageConvTitle,
      S.of(context).dataStorageConvDesc,
      Icons.sd_card_outlined,
      '/data-storage-conv',
    );
  }

  /// 更多（常用单位）
  static CardInfo getCommonUnitMore(BuildContext context) {
    return CardInfo(
      _getMoreText(context),
      S.of(context).commonUnitMoreDesc,
      Icons.more_horiz_rounded,
      '/common-unit-more',
    );
  }

  // 特殊计算
  /// 日常生活
  static List<CardInfo> getDailyLife(BuildContext context) {
    return <CardInfo>[
      getRelativesConv(context),
      getBMI(context),
      getFoodCalorieCalc(context),
      getExerCalorieCalc(context),
      getFuelConsumptionConv(context),
      getGamePriceCalc(context),
    ];
  }

  /// 亲戚称呼
  static CardInfo getRelativesConv(BuildContext context) {
    return CardInfo(
      S.of(context).relativesConvTitle,
      S.of(context).relativesConvDesc,
      Icons.family_restroom_rounded,
      '/relatives-conv',
    );
  }

  /// BMI 指数
  static CardInfo getBMI(BuildContext context) {
    return CardInfo(
      S.of(context).bMITitle,
      S.of(context).bMIDesc,
      Icons.sports_soccer_rounded,
      '/bmi',
    );
  }

  /// 食物热量
  static CardInfo getFoodCalorieCalc(BuildContext context) {
    return CardInfo(
      S.of(context).foodCalorieCalcTitle,
      S.of(context).foodCalorieCalcDesc,
      Icons.fastfood_outlined,
      '/food-calorie-calc',
    );
  }

  /// 运动热量
  static CardInfo getExerCalorieCalc(BuildContext context) {
    return CardInfo(
      S.of(context).exerCalorieCalcTitle,
      S.of(context).exerCalorieCalcDesc,
      Icons.surfing_rounded,
      '/exer-calorie-calc',
    );
  }

  /// 油耗量换算
  static CardInfo getFuelConsumptionConv(BuildContext context) {
    return CardInfo(
      S.of(context).fuelConsumptionConvTitle,
      S.of(context).fuelConsumptionConvDesc,
      Icons.local_gas_station_rounded,
      '/fuel-consumption-conv',
    );
  }

  /// 游戏价格
  static CardInfo getGamePriceCalc(BuildContext context) {
    return CardInfo(
      S.of(context).gamePriceCalcTitle,
      S.of(context).gamePriceCalcDesc,
      Icons.sports_esports_outlined,
      '/game-price-calc',
    );
  }

  /// 更多（日常生活）
  static CardInfo getDailyLifeMore(BuildContext context) {
    return CardInfo(
      _getMoreText(context),
      S.of(context).dailyLifeMoreDesc,
      Icons.more_horiz_rounded,
      '/daily-life-more',
    );
  }

  /// 日期时间
  static List<CardInfo> getDateTime(BuildContext context) {
    return <CardInfo>[
      getZodiacCalc(context),
      getBirthdayCalc(context),
      getCountdown(context),
      getDateInterval(context),
      getCalendarConv(context),
      getTimeZoneConv(context),
    ];
  }

  /// 生肖计算
  static CardInfo getZodiacCalc(BuildContext context) {
    return CardInfo(
      S.of(context).zodiacCalcTitle,
      S.of(context).zodiacCalcDesc,
      Icons.cruelty_free_rounded,
      '/zodiac-calc',
    );
  }

  /// 生日计算
  static CardInfo getBirthdayCalc(BuildContext context) {
    return CardInfo(
      S.of(context).birthdayCalcTitle,
      S.of(context).birthdayCalcDesc,
      Icons.cake_outlined,
      '/birthday-calc',
    );
  }

  /// 倒数日
  static CardInfo getCountdown(BuildContext context) {
    return CardInfo(
      S.of(context).countdownTitle,
      S.of(context).countdownDesc,
      Icons.event_available_rounded,
      '/countdown',
    );
  }

  /// 日期间隔
  static CardInfo getDateInterval(BuildContext context) {
    return CardInfo(
      S.of(context).dateIntervalTitle,
      S.of(context).dateIntervalDesc,
      Icons.date_range_rounded,
      '/date-interval',
    );
  }

  /// 历法转换
  static CardInfo getCalendarConv(BuildContext context) {
    return CardInfo(
      S.of(context).calendarConvTitle,
      S.of(context).calendarConvDesc,
      Icons.brightness_6_rounded,
      '/date-interval',
    );
  }

  /// 时区转换
  static CardInfo getTimeZoneConv(BuildContext context) {
    return CardInfo(
      S.of(context).timeZoneConvTitle,
      S.of(context).timeZoneConvDesc,
      Icons.public_rounded,
      '/time-zone-conv',
    );
  }

  /// 更多（日期时间）
  static CardInfo getDateTimeMore(BuildContext context) {
    return CardInfo(
      _getMoreText(context),
      S.of(context).dateTimeMoreDesc,
      Icons.more_horiz_rounded,
      '/date-time-more',
    );
  }

  /// 金融理财
  static List<CardInfo> getFinancialManagement(BuildContext context) {
    return <CardInfo>[
      getMortgageCalc(context),
      getLoanCalc(context),
      getPersonalTaxCalc(context),
      getFinancialCalc(context),
      getExchangeRateConv(context),
      getCapitalizeAmount(context),
      getDiscountedPriceCalc(context),
      getTVMCalc(context),
      getDigitalCurrencyCalc(context),
    ];
  }

  /// 房贷计算
  static CardInfo getMortgageCalc(BuildContext context) {
    return CardInfo(
      S.of(context).mortgageCalcTitle,
      S.of(context).mortgageCalcDesc,
      Icons.home_rounded,
      '/mortgage-calc',
    );
  }

  /// 贷款计算
  static CardInfo getLoanCalc(BuildContext context) {
    return CardInfo(
      S.of(context).loanCalcTitle,
      S.of(context).loanCalcDesc,
      Icons.monetization_on_outlined,
      '/loan-calc',
    );
  }

  /// 个税计算
  static CardInfo getPersonalTaxCalc(BuildContext context) {
    return CardInfo(
      S.of(context).personalTaxCalcTitle,
      S.of(context).personalTaxCalcDesc,
      Icons.money_off_rounded,
      '/personal-tax-calc',
    );
  }

  /// 理财计算
  static CardInfo getFinancialCalc(BuildContext context) {
    return CardInfo(
      S.of(context).financialCalcTitle,
      S.of(context).financialCalcDesc,
      Icons.attach_money_rounded,
      '/personal-tax-calc',
    );
  }

  /// 汇率换算
  static CardInfo getExchangeRateConv(BuildContext context) {
    return CardInfo(
      S.of(context).exchangeRateConvTitle,
      S.of(context).exchangeRateConvDesc,
      Icons.currency_pound_rounded,
      '/exchange-rate-conv',
    );
  }

  /// 大写金额
  static CardInfo getCapitalizeAmount(BuildContext context) {
    return CardInfo(
      S.of(context).capitalizeAmountTitle,
      S.of(context).capitalizeAmountDesc,
      Icons.currency_yen_rounded,
      '/capitalize-amount',
    );
  }

  /// 优惠金额
  static CardInfo getDiscountedPriceCalc(BuildContext context) {
    return CardInfo(
      S.of(context).discountedPriceCalcTitle,
      S.of(context).discountedPriceCalcDesc,
      Icons.discount_rounded,
      '/discounted-price-calc',
    );
  }

  /// TVM 计算
  static CardInfo getTVMCalc(BuildContext context) {
    return CardInfo(
      S.of(context).tVMCalcTitle,
      S.of(context).tVMCalcDesc,
      Icons.currency_exchange_rounded,
      '/tvm-calc',
    );
  }

  /// 数字货币
  static CardInfo getDigitalCurrencyCalc(BuildContext context) {
    return CardInfo(
      S.of(context).digitalCurrencyCalcTitle,
      S.of(context).digitalCurrencyCalcDesc,
      Icons.currency_bitcoin_rounded,
      '/digital-currency-calc',
    );
  }

  /// 更多（金融理财）
  static CardInfo getFinancialManagementMore(BuildContext context) {
    return CardInfo(
      _getMoreText(context),
      S.of(context).financialManagementMoreDesc,
      Icons.more_horiz_rounded,
      '/financial-management-more',
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Isla Calc (Beta)`
  String get funcHomePageTitle {
    return Intl.message(
      'Isla Calc (Beta)',
      name: 'funcHomePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Common Calc`
  String get funcHomePageNavigationTitle {
    return Intl.message(
      'Common Calc',
      name: 'funcHomePageNavigationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Unit Conv`
  String get funcUnitConvTitle {
    return Intl.message(
      'Unit Conv',
      name: 'funcUnitConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `Special Calc`
  String get funcSpecialCalcTitle {
    return Intl.message(
      'Special Calc',
      name: 'funcSpecialCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pro Field`
  String get funcProfessionalFieldTitle {
    return Intl.message(
      'Pro Field',
      name: 'funcProfessionalFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `✒ Common Calc`
  String get commonsTitle {
    return Intl.message(
      '✒ Common Calc',
      name: 'commonsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Standard Calc`
  String get standardCalcTitle {
    return Intl.message(
      'Standard Calc',
      name: 'standardCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `basic calculation`
  String get standardCalcDesc {
    return Intl.message(
      'basic calculation',
      name: 'standardCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Scientific Calc`
  String get scientificCalcTitle {
    return Intl.message(
      'Scientific Calc',
      name: 'scientificCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `casio-like layout`
  String get scientificCalcDesc {
    return Intl.message(
      'casio-like layout',
      name: 'scientificCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Fraction Calc`
  String get fractionCalcTitle {
    return Intl.message(
      'Fraction Calc',
      name: 'fractionCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `fractional keyboard layout`
  String get fractionCalcDesc {
    return Intl.message(
      'fractional keyboard layout',
      name: 'fractionCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Base Conv`
  String get baseConvTitle {
    return Intl.message(
      'Base Conv',
      name: 'baseConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `decimal, binary`
  String get baseConvDesc {
    return Intl.message(
      'decimal, binary',
      name: 'baseConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Logic Operation`
  String get logicCalcTitle {
    return Intl.message(
      'Logic Operation',
      name: 'logicCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `or, and, not`
  String get logicCalcDesc {
    return Intl.message(
      'or, and, not',
      name: 'logicCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Bit Operation`
  String get bitCalcTitle {
    return Intl.message(
      'Bit Operation',
      name: 'bitCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `AND, OR, XOR`
  String get bitCalcDesc {
    return Intl.message(
      'AND, OR, XOR',
      name: 'bitCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Desmos`
  String get desmosTitle {
    return Intl.message(
      'Desmos',
      name: 'desmosTitle',
      desc: '',
      args: [],
    );
  }

  /// `WebView`
  String get desmosDesc {
    return Intl.message(
      'WebView',
      name: 'desmosDesc',
      desc: '',
      args: [],
    );
  }

  /// `Logic Operation, Bit Operation`
  String get commonCalcMoreDesc {
    return Intl.message(
      'Logic Operation, Bit Operation',
      name: 'commonCalcMoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `📦 More`
  String get moreTitle {
    return Intl.message(
      '📦 More',
      name: 'moreTitle',
      desc: '',
      args: [],
    );
  }

  /// `Global Settings`
  String get globalSettingsTitle {
    return Intl.message(
      'Global Settings',
      name: 'globalSettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Appearance, Decimal places`
  String get globalSettingsDesc {
    return Intl.message(
      'Appearance, Decimal places',
      name: 'globalSettingsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Related Instructions`
  String get relatedInstructionsTitle {
    return Intl.message(
      'Related Instructions',
      name: 'relatedInstructionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `skills`
  String get relatedInstructionsDesc {
    return Intl.message(
      'skills',
      name: 'relatedInstructionsDesc',
      desc: '',
      args: [],
    );
  }

  /// `About The App`
  String get aboutTheAppTitle {
    return Intl.message(
      'About The App',
      name: 'aboutTheAppTitle',
      desc: '',
      args: [],
    );
  }

  /// `participate and contribute`
  String get aboutTheAppDesc {
    return Intl.message(
      'participate and contribute',
      name: 'aboutTheAppDesc',
      desc: '',
      args: [],
    );
  }

  /// `🧊 Base Units`
  String get baseUnitTitle {
    return Intl.message(
      '🧊 Base Units',
      name: 'baseUnitTitle',
      desc: '',
      args: [],
    );
  }

  /// `Length Conv`
  String get lenConvTitle {
    return Intl.message(
      'Length Conv',
      name: 'lenConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `meters, kilometers, centimeters`
  String get lenConvDesc {
    return Intl.message(
      'meters, kilometers, centimeters',
      name: 'lenConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Mass Conv`
  String get massConvTitle {
    return Intl.message(
      'Mass Conv',
      name: 'massConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `grams, kilograms, tons`
  String get massConvDesc {
    return Intl.message(
      'grams, kilograms, tons',
      name: 'massConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Time Conv`
  String get timeConvTitle {
    return Intl.message(
      'Time Conv',
      name: 'timeConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `hours, minutes, seconds`
  String get timeConvDesc {
    return Intl.message(
      'hours, minutes, seconds',
      name: 'timeConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Current Conv`
  String get currentConvTitle {
    return Intl.message(
      'Current Conv',
      name: 'currentConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `ampere, milliamp`
  String get currentConvDesc {
    return Intl.message(
      'ampere, milliamp',
      name: 'currentConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Temperature Conv`
  String get tempConvTitle {
    return Intl.message(
      'Temperature Conv',
      name: 'tempConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `celsius, fahrenheit`
  String get tempConvDesc {
    return Intl.message(
      'celsius, fahrenheit',
      name: 'tempConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `molar mass`
  String get molarMassConvTitle {
    return Intl.message(
      'molar mass',
      name: 'molarMassConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `kg/mol, g/mol`
  String get molarMassConvDesc {
    return Intl.message(
      'kg/mol, g/mol',
      name: 'molarMassConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Light Intensity`
  String get lightIntensityConvTitle {
    return Intl.message(
      'Light Intensity',
      name: 'lightIntensityConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `candela`
  String get lightIntensityConvDesc {
    return Intl.message(
      'candela',
      name: 'lightIntensityConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Current Conv, Temperature Conv`
  String get baseUnitMoreDesc {
    return Intl.message(
      'Current Conv, Temperature Conv',
      name: 'baseUnitMoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `📍 Common Units`
  String get commonUnitTitle {
    return Intl.message(
      '📍 Common Units',
      name: 'commonUnitTitle',
      desc: '',
      args: [],
    );
  }

  /// `Area Conv`
  String get areaConvTitle {
    return Intl.message(
      'Area Conv',
      name: 'areaConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `square meters, square kilometers`
  String get areaConvDesc {
    return Intl.message(
      'square meters, square kilometers',
      name: 'areaConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Pressure Conv`
  String get pressureConvTitle {
    return Intl.message(
      'Pressure Conv',
      name: 'pressureConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `pascal`
  String get pressureConvDesc {
    return Intl.message(
      'pascal',
      name: 'pressureConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Energy and Work`
  String get energyConvTitle {
    return Intl.message(
      'Energy and Work',
      name: 'energyConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `joules, kilojoules`
  String get energyConvDesc {
    return Intl.message(
      'joules, kilojoules',
      name: 'energyConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Power Conv`
  String get powerConvTitle {
    return Intl.message(
      'Power Conv',
      name: 'powerConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `watts, kilowatts`
  String get powerConvDesc {
    return Intl.message(
      'watts, kilowatts',
      name: 'powerConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Force Conv`
  String get forceConvTitle {
    return Intl.message(
      'Force Conv',
      name: 'forceConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `newton, exanewton`
  String get forceConvDesc {
    return Intl.message(
      'newton, exanewton',
      name: 'forceConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Velocity Conv`
  String get velocityConvTitle {
    return Intl.message(
      'Velocity Conv',
      name: 'velocityConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `m/s, km/h`
  String get velocityConvDesc {
    return Intl.message(
      'm/s, km/h',
      name: 'velocityConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Angle Conv`
  String get angleConvTitle {
    return Intl.message(
      'Angle Conv',
      name: 'angleConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `angle, radian`
  String get angleConvDesc {
    return Intl.message(
      'angle, radian',
      name: 'angleConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Storage Capacity`
  String get dataStorageConvTitle {
    return Intl.message(
      'Storage Capacity',
      name: 'dataStorageConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `bit, byte`
  String get dataStorageConvDesc {
    return Intl.message(
      'bit, byte',
      name: 'dataStorageConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Power Conv, Force Conv`
  String get commonUnitMoreDesc {
    return Intl.message(
      'Power Conv, Force Conv',
      name: 'commonUnitMoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `🏓 Daily Life`
  String get dailyLifeTitle {
    return Intl.message(
      '🏓 Daily Life',
      name: 'dailyLifeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Relative's appellation`
  String get relativesConvTitle {
    return Intl.message(
      'Relative\'s appellation',
      name: 'relativesConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `how to call`
  String get relativesConvDesc {
    return Intl.message(
      'how to call',
      name: 'relativesConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `BMI`
  String get bMITitle {
    return Intl.message(
      'BMI',
      name: 'bMITitle',
      desc: '',
      args: [],
    );
  }

  /// `body mass index`
  String get bMIDesc {
    return Intl.message(
      'body mass index',
      name: 'bMIDesc',
      desc: '',
      args: [],
    );
  }

  /// `Food Calories`
  String get foodCalorieCalcTitle {
    return Intl.message(
      'Food Calories',
      name: 'foodCalorieCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `food calories calc`
  String get foodCalorieCalcDesc {
    return Intl.message(
      'food calories calc',
      name: 'foodCalorieCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Calories`
  String get exerCalorieCalcTitle {
    return Intl.message(
      'Exercise Calories',
      name: 'exerCalorieCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `exercise burns calories`
  String get exerCalorieCalcDesc {
    return Intl.message(
      'exercise burns calories',
      name: 'exerCalorieCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Fuel Consumption Conv`
  String get fuelConsumptionConvTitle {
    return Intl.message(
      'Fuel Consumption Conv',
      name: 'fuelConsumptionConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `fuel consumption per 100 km`
  String get fuelConsumptionConvDesc {
    return Intl.message(
      'fuel consumption per 100 km',
      name: 'fuelConsumptionConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Game Price`
  String get gamePriceCalcTitle {
    return Intl.message(
      'Game Price',
      name: 'gamePriceCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `Switch game actual purchase price`
  String get gamePriceCalcDesc {
    return Intl.message(
      'Switch game actual purchase price',
      name: 'gamePriceCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Calories, Fuel Consumption Conv`
  String get dailyLifeMoreDesc {
    return Intl.message(
      'Exercise Calories, Fuel Consumption Conv',
      name: 'dailyLifeMoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `🗓️ Date and Time`
  String get dateTimeTitle {
    return Intl.message(
      '🗓️ Date and Time',
      name: 'dateTimeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Zodiac Calc`
  String get zodiacCalcTitle {
    return Intl.message(
      'Zodiac Calc',
      name: 'zodiacCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `zodiac, year mutual check`
  String get zodiacCalcDesc {
    return Intl.message(
      'zodiac, year mutual check',
      name: 'zodiacCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Birthday Calc`
  String get birthdayCalcTitle {
    return Intl.message(
      'Birthday Calc',
      name: 'birthdayCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `days elapsed`
  String get birthdayCalcDesc {
    return Intl.message(
      'days elapsed',
      name: 'birthdayCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Countdown`
  String get countdownTitle {
    return Intl.message(
      'Countdown',
      name: 'countdownTitle',
      desc: '',
      args: [],
    );
  }

  /// `date countdown`
  String get countdownDesc {
    return Intl.message(
      'date countdown',
      name: 'countdownDesc',
      desc: '',
      args: [],
    );
  }

  /// `Date Interval`
  String get dateIntervalTitle {
    return Intl.message(
      'Date Interval',
      name: 'dateIntervalTitle',
      desc: '',
      args: [],
    );
  }

  /// `date calculation`
  String get dateIntervalDesc {
    return Intl.message(
      'date calculation',
      name: 'dateIntervalDesc',
      desc: '',
      args: [],
    );
  }

  /// `Calendar Conv`
  String get calendarConvTitle {
    return Intl.message(
      'Calendar Conv',
      name: 'calendarConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `Gregorian calendar, lunar calendar`
  String get calendarConvDesc {
    return Intl.message(
      'Gregorian calendar, lunar calendar',
      name: 'calendarConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Time Zone Conv`
  String get timeZoneConvTitle {
    return Intl.message(
      'Time Zone Conv',
      name: 'timeZoneConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `time zone conversion / world time`
  String get timeZoneConvDesc {
    return Intl.message(
      'time zone conversion / world time',
      name: 'timeZoneConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Date Interval, Calendar Conv`
  String get dateTimeMoreDesc {
    return Intl.message(
      'Date Interval, Calendar Conv',
      name: 'dateTimeMoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `💰 Financial Management`
  String get financialManagementTitle {
    return Intl.message(
      '💰 Financial Management',
      name: 'financialManagementTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mortgage Calc`
  String get mortgageCalcTitle {
    return Intl.message(
      'Mortgage Calc',
      name: 'mortgageCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `commercial Loans, provident Fund`
  String get mortgageCalcDesc {
    return Intl.message(
      'commercial Loans, provident Fund',
      name: 'mortgageCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Loan Calc`
  String get loanCalcTitle {
    return Intl.message(
      'Loan Calc',
      name: 'loanCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `ordinary loan`
  String get loanCalcDesc {
    return Intl.message(
      'ordinary loan',
      name: 'loanCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Personal Tax Calc`
  String get personalTaxCalcTitle {
    return Intl.message(
      'Personal Tax Calc',
      name: 'personalTaxCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `year-end bonus, five insurances and one housing fund`
  String get personalTaxCalcDesc {
    return Intl.message(
      'year-end bonus, five insurances and one housing fund',
      name: 'personalTaxCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Financial Calc`
  String get financialCalcTitle {
    return Intl.message(
      'Financial Calc',
      name: 'financialCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `compound interest, fixed investment`
  String get financialCalcDesc {
    return Intl.message(
      'compound interest, fixed investment',
      name: 'financialCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Currency Conv`
  String get exchangeRateConvTitle {
    return Intl.message(
      'Currency Conv',
      name: 'exchangeRateConvTitle',
      desc: '',
      args: [],
    );
  }

  /// `fiat currency, digital currency`
  String get exchangeRateConvDesc {
    return Intl.message(
      'fiat currency, digital currency',
      name: 'exchangeRateConvDesc',
      desc: '',
      args: [],
    );
  }

  /// `Capitalize Amount`
  String get capitalizeAmountTitle {
    return Intl.message(
      'Capitalize Amount',
      name: 'capitalizeAmountTitle',
      desc: '',
      args: [],
    );
  }

  /// `RMB capitalized amount`
  String get capitalizeAmountDesc {
    return Intl.message(
      'RMB capitalized amount',
      name: 'capitalizeAmountDesc',
      desc: '',
      args: [],
    );
  }

  /// `Discounted Price`
  String get discountedPriceCalcTitle {
    return Intl.message(
      'Discounted Price',
      name: 'discountedPriceCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `discounts`
  String get discountedPriceCalcDesc {
    return Intl.message(
      'discounts',
      name: 'discountedPriceCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `TVM Calc`
  String get tVMCalcTitle {
    return Intl.message(
      'TVM Calc',
      name: 'tVMCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `time value of money`
  String get tVMCalcDesc {
    return Intl.message(
      'time value of money',
      name: 'tVMCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Digital Currency`
  String get digitalCurrencyCalcTitle {
    return Intl.message(
      'Digital Currency',
      name: 'digitalCurrencyCalcTitle',
      desc: '',
      args: [],
    );
  }

  /// `digital currency related calculations`
  String get digitalCurrencyCalcDesc {
    return Intl.message(
      'digital currency related calculations',
      name: 'digitalCurrencyCalcDesc',
      desc: '',
      args: [],
    );
  }

  /// `Financial Calc, Currency Conv`
  String get financialManagementMoreDesc {
    return Intl.message(
      'Financial Calc, Currency Conv',
      name: 'financialManagementMoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get moreText {
    return Intl.message(
      'More',
      name: 'moreText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

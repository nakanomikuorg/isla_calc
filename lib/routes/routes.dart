import 'package:isla_calc/pages/func/daily_life_more_page.dart';

import '../pages/about_the_app/about_the_app_page.dart';
import '../pages/commons/desmos_page.dart';
import '../pages/commons/standard_calc_page.dart';
import '../pages/func/base_unit_more_page.dart';
import '../pages/func/common_calc_more_page.dart';
import '../pages/func/common_unit_more_page.dart';
import '../pages/func/date_time_more_page.dart';
import '../pages/func/financial_management_more_page.dart';
import '../pages/func/func_page.dart';
import '../pages/history_page.dart';
import '../pages/settings/commons/standard_calc_settings_page.dart';
import '../pages/settings/global_settings_page.dart';
import '../pages/unimplemented_page.dart';
import '../pages/unit_conv/len_conv_page.dart';

// 配置路由
final routes = {
  '/': (context) => const FuncPage(),
  '/history': (context) => const HistoryPage(),
  '/standard-calc': (context) => const StandardCalcPage(),
  '/standard-calc-settings': (context) => const StandardCalcSettingsPage(),
  '/common-calc-more': (context) => const CommonCalcMorePage(),
  '/desmos': (context) => const DesmosPage(),
  '/global-settings': (context) => const GlobalSettingsPage(),
  '/len-conv': (context) => const LenConvPage(),
  '/base-unit-more': (context) => const BaseUnitMorePage(),
  '/common-unit-more': (context) => const CommonUnitMorePage(),
  '/about-the-app': (context) => const AboutTheAppPage(),
  '/daily-life-more': (context) => const DailyLifeMorePage(),
  '/date-time-more': (context) => const DateTimeMorePage(),
  '/financial-management-more': (context) =>
      const FinancialManagementMorePage(),
  '/unimplemented': (context) => const UnimplementedPage(),
};

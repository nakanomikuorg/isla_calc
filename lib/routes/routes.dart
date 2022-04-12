import '../pages/about_the_app/about_the_app_page.dart';
import '../pages/commons/desmos_page.dart';
import '../pages/commons/standard_calc_page.dart';
import '../pages/func/base_unit_more_page.dart';
import '../pages/func/common_calc_more_page.dart';
import '../pages/func/common_unit_more_page.dart';
import '../pages/func/func_page.dart';
import '../pages/settings/settings_page.dart';
import '../pages/unit_conv/len_conv_page.dart';

// 配置路由
final routes = {
  '/': (context) => const FuncPage(),
  '/standard-calc': (context) => const StandardCalcPage(),
  '/common-calc-more': (context) => const CommonCalcMorePage(),
  '/desmos': (context) => const DesmosPage(),
  '/global-settings': (context) => const SettingsPage(),
  '/len-conv': (context) => const LenConvPage(),
  '/base-unit-more': (context) => const BaseUnitMorePage(),
  '/common-unit-more': (context) => const CommonUnitMorePage(),
  '/about-the-app': (context) => const AboutTheAppPage(),
};

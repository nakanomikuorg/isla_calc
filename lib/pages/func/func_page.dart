import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/common_widgets/blur_app_bar.dart';

import '../../models/func/card_info.dart';
import '../../models/func/cards_info.dart';
import '../../themes/text_info.dart';
import '../../widgets/func/card.dart';
import '../../widgets/func/cards_info_data.dart';
import '../../widgets/func/navigation_bar.dart';

class FuncSelectionPage extends StatefulWidget {
  const FuncSelectionPage({Key? key}) : super(key: key);

  @override
  State<FuncSelectionPage> createState() => _FuncSelectionPageState();
}

class _FuncSelectionPageState extends State<FuncSelectionPage> {
  static final _homePage = FuncSelectionBodyContent(
    '艾拉计算器',
    '🍵',
    mainCardsInfos: const <CardsInfo>[
      CardsInfo(
        ' 🌸 常用功能',
        <CardInfo>[
          CardInfo(
            '标准计算器',
            '基本计算',
            Icons.calculate_outlined,
            '/standard-calc',
          ),
          CardInfo(
            '科学计算器',
            '类卡西欧',
            Icons.analytics_outlined,
            '',
          ),
          CardInfo(
            'Desmos',
            'WebView',
            Icons.show_chart_rounded,
            '',
          ),
        ],
      ),
      CardsInfo(
        ' 🏷 收藏功能',
        <CardInfo>[
          CardInfo(
            '标准计算器',
            '基本计算',
            Icons.calculate_outlined,
            '/standard-calc-page',
          ),
        ],
      ),
    ],
    otherCardsInfos: CardsInfoData.commonCalcOtherCardsInfos,
  );
  static final _unitConv = FuncSelectionBodyContent(
    '单位换算',
    '📏',
    mainCardsInfos: const <CardsInfo>[
      CardsInfo(
        ' 💎 常用功能',
        <CardInfo>[
          CardInfo(
            '长度换算',
            '米、千米...',
            Icons.straighten_outlined,
            '',
          ),
          CardInfo(
            '质量换算',
            null,
            Icons.inventory_2_rounded,
            '',
          ),
          CardInfo(
            '温度换算',
            null,
            Icons.thermostat_rounded,
            '',
          ),
        ],
      )
    ],
    otherCardsInfos: CardsInfoData.unitConvOtherCardsInfos,
  );
  static final _specialCalc = FuncSelectionBodyContent(
    '特殊计算',
    '💷',
    mainCardsInfos: const <CardsInfo>[
      CardsInfo(
        ' 💎 常用功能',
        <CardInfo>[
          CardInfo(
            '亲戚称呼',
            '称呼互查',
            Icons.family_restroom_rounded,
            '',
          ),
          CardInfo(
            '倒数日',
            '日期倒数',
            Icons.event_available_rounded,
            '',
          ),
          CardInfo(
            '生日',
            '生日计算',
            Icons.cake_rounded,
            '',
          ),
        ],
      ),
    ],
    otherCardsInfos: CardsInfoData.specialCalcOtherCardsInfos,
  );
  static const _professionalField = FuncSelectionBodyContent(
    '专业领域',
    '⚗',
    otherCardsInfos: <CardsInfo>[
      CardsInfo(
        ' 🪚 建筑工程',
        <CardInfo>[
          CardInfo(
            '工程费用',
            '工程监理费',
            Icons.precision_manufacturing_rounded,
            '',
          ),
          CardInfo(
            '焊接',
            '截面面积、单位重量',
            Icons.link_rounded,
            '',
          ),
          CardInfo(
            '更多...',
            null,
            Icons.more_horiz_rounded,
            '',
          ),
        ],
      ),
    ],
  );
  static final List<FuncSelectionBodyContent> _pages = [
    _homePage,
    _unitConv,
    _specialCalc,
    _professionalField,
  ];

  int _currentPageIndex = 0;

  void _setCurrentPage(int i) {
    setState(() {
      _currentPageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: BlurAppBar(
        '',
        <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          )
        ],
      ),
      body: _pages[_currentPageIndex],
      bottomNavigationBar: FuncSelectionNavigationBar(
        _currentPageIndex,
        _setCurrentPage,
      ),
    );
  }
}

class FuncSelectionBodyContent extends StatelessWidget {
  const FuncSelectionBodyContent(
    this._title,
    this._emj, {
    Key? key,
    this.mainCardsInfos,
    this.otherCardsInfos,
  }) : super(key: key);

  final String _title;
  final String _emj;
  final List<CardsInfo>? mainCardsInfos;
  final List<CardsInfo>? otherCardsInfos;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 16.0, 0.0, 0.0),
          child: Text(
            _emj,
            style: const TextStyle(
              fontSize: 58.0,
              fontFamilyFallback: TextInfo.fontFamilyFallback,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 16.0, 0.0, 0.0),
          child: Text(
            _title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 32.0,
              fontFamilyFallback: TextInfo.fontFamilyFallback,
            ),
          ),
        ),
        ...?mainCardsInfos?.map(
          (commonCardsInfo) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 0.0),
                  child: Text(
                    commonCardsInfo.groupName,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontFamilyFallback: TextInfo.fontFamilyFallback,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                ...commonCardsInfo.groupCardInfos.map((groupCardInfo) {
                  return FuncMainCard(
                    groupCardInfo.cardTitle,
                    groupCardInfo.cardSubtitle,
                    groupCardInfo.cardIconData,
                    groupCardInfo.pushName,
                  );
                }),
              ],
            );
          },
        ),
        ...?otherCardsInfos?.map(
          (groupCardsInfo) {
            var map = groupCardsInfo.groupCardInfos.map(
              (groupCardInfo) {
                return FuncOtherCard(
                  groupCardInfo.cardTitle,
                  groupCardInfo.cardSubtitle,
                  groupCardInfo.cardIconData,
                  groupCardInfo.pushName,
                );
              },
            );
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 0.0),
                  child: Text(
                    groupCardsInfo.groupName,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontFamilyFallback: TextInfo.fontFamilyFallback,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                ...map,
              ],
            );
          },
        ),
        const SizedBox(
          height: 16.0,
        )
      ],
    );
  }
}

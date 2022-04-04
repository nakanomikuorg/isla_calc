import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/common_widgets/blur_app_bar.dart';

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
  static const _homePage = FuncSelectionBodyContent(
    '艾拉计算器',
    '🍵',
    cardsInfos: CardsInfoData.homePageCardsInfos,
  );
  static const _unitConv = FuncSelectionBodyContent(
    '单位换算',
    '📏',
    cardsInfos: CardsInfoData.unitConvCardsInfos,
  );
  static const _specialCalc = FuncSelectionBodyContent(
    '特殊计算',
    '💷',
    cardsInfos: CardsInfoData.specialCalcCardsInfos,
  );
  static const _professionalField = FuncSelectionBodyContent(
    '专业领域',
    '⚗',
    cardsInfos: CardsInfoData.specialCalcCardsInfos,
  );

  static const List<FuncSelectionBodyContent> _pages = [
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
    this.cardsInfos,
  }) : super(key: key);

  final String _title;
  final String _emj;
  final List<CardsInfo>? cardsInfos;

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
        ...?cardsInfos?.map(
          (commonCardsInfo) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 0.0),
                  child: Text(
                    '  ${commonCardsInfo.groupName}',
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
        const SizedBox(
          height: 16.0,
        )
      ],
    );
  }
}

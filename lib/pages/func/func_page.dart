import 'package:flutter/material.dart';

import '../../models/func/cards_info.dart';
import '../../widgets/func/func_card.dart';
import '../../widgets/func/func_cards_info_data.dart';
import '../../widgets/func/func_navigation_bar.dart';
import '../../widgets/general/page/general_page.dart';
import '../../widgets/general/page/subtitle.dart';
import '../../widgets/general/size_box/v_size_box.dart';

class FuncPage extends StatefulWidget {
  const FuncPage({Key? key}) : super(key: key);

  @override
  State<FuncPage> createState() => _FuncPageState();
}

class _FuncPageState extends State<FuncPage> {
  static const _homePage = FuncPageBody(
    title: '艾拉计算器（Beta）',
    emj: '🍨',
    cardsInfos: FuncCardsInfoData.homePageInfos,
  );
  static const _unitConv = FuncPageBody(
    title: '单位换算',
    emj: '📏',
    cardsInfos: FuncCardsInfoData.unitConvInfos,
  );
  static const _specialCalc = FuncPageBody(
    title: '特殊计算',
    emj: '💷',
    cardsInfos: FuncCardsInfoData.specialCalcInfos,
  );
  static const _professionalField = FuncPageBody(
    title: '专业领域',
    emj: '⚗',
    cardsInfos: FuncCardsInfoData.specialCalcInfos,
  );

  static const List<FuncPageBody> _pages = [
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
    return GeneralPage(
      iconData: Icons.more_vert_rounded,
      body: _pages[_currentPageIndex],
      bottomNavigationBar: FuncNavigationBar(
        _currentPageIndex,
        _setCurrentPage,
      ),
    );
  }
}

class FuncPageBody extends StatelessWidget {
  const FuncPageBody({
    Key? key,
    required this.title,
    required this.emj,
    this.cardsInfos,
  }) : super(key: key);

  final String title;
  final String emj;
  final List<CardsInfo>? cardsInfos;

  @override
  Widget build(BuildContext context) {
    return GeneralPageBody(
      title: title,
      emj: emj,
      children: <Widget>[
        ...?cardsInfos?.map(
          (cardsInfo) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Subtitle(
                  title: cardsInfo.groupName,
                ),
                ...cardsInfo.groupCardInfos.map((cardInfo) {
                  return FuncCard(
                    title: cardInfo.cardTitle,
                    subtitle: cardInfo.cardSubtitle,
                    icon: cardInfo.cardIconData,
                    pushName: cardInfo.pushName,
                  );
                }),
              ],
            );
          },
        ),
        const VSizeBox(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
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
  int _currentPageIndex = 0;

  void _setCurrentPage(int i) {
    setState(() {
      _currentPageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _homePage = HomePage();
    const _unitConv = UnitConv();
    const _specialCalc = SpecialCalc();
    // const _professionalField = ProfessionalField();

    const List<Widget> _pages = [
      _homePage,
      _unitConv,
      _specialCalc,
      // _professionalField,
    ];

    return GeneralPage(
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
                ...cardsInfo.groupCardInfos.map(
                  (cardInfo) {
                    return FuncCard(
                      title: cardInfo.cardTitle,
                      subtitle: cardInfo.cardSubtitle,
                      icon: cardInfo.cardIconData,
                      pushName: cardInfo.pushName,
                    );
                  },
                ),
              ],
            );
          },
        ),
        const VSizeBox(),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FuncPageBody(
      title: S.of(context).funcHomePageTitle,
      emj: '🍨',
      cardsInfos: FuncCardsInfoData.getHomePageInfos(context),
    );
  }
}

class UnitConv extends StatelessWidget {
  const UnitConv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FuncPageBody(
      title: S.of(context).funcUnitConvTitle,
      emj: '📏',
      cardsInfos: FuncCardsInfoData.getUnitConvInfos(context),
    );
  }
}

class SpecialCalc extends StatelessWidget {
  const SpecialCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FuncPageBody(
      title: S.of(context).funcSpecialCalcTitle,
      emj: '💷',
      cardsInfos: FuncCardsInfoData.getSpecialCalcInfos(context),
    );
  }
}

class ProfessionalField extends StatelessWidget {
  const ProfessionalField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FuncPageBody(
      title: S.of(context).funcProfessionalFieldTitle,
      emj: '⚗',
      cardsInfos: FuncCardsInfoData.getSpecialCalcInfos(context),
    );
  }
}

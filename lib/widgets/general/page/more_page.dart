import 'package:flutter/material.dart';

import '../../../models/func/cards_info.dart';
import '../../func/func_card.dart';
import '../size_box/v_size_box.dart';
import 'general_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    Key? key,
    required this.cardsInfo,
  }) : super(key: key);

  final CardsInfo cardsInfo;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      actionsIconData: Icons.more_vert_rounded,
      body: MoreBodyContent(
        cardsInfo: cardsInfo,
      ),
    );
  }
}

class MoreBodyContent extends StatelessWidget {
  const MoreBodyContent({
    Key? key,
    required this.cardsInfo,
  }) : super(key: key);

  final CardsInfo cardsInfo;

  @override
  Widget build(BuildContext context) {
    var groupName = cardsInfo.groupName;

    return GeneralPageBody(
      title: groupName.substring(
        groupName.indexOf(' ') + 1,
      ),
      emj: groupName.substring(
        0,
        groupName.indexOf(' '),
      ),
      children: <Widget>[
        ...cardsInfo.groupCardInfos.map((cardInfo) {
          return FuncCard(
            title: cardInfo.cardTitle,
            subtitle: cardInfo.cardSubtitle,
            icon: cardInfo.cardIconData,
            pushName: cardInfo.pushName,
          );
        }),
        const VSizeBox(),
      ],
    );
  }
}

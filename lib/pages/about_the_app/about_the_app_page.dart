import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/general/card/circle_img_card.dart';
import '../../widgets/general/card/icon_card.dart';
import '../../widgets/general/page/general_page.dart';
import '../../widgets/general/page/subtitle.dart';
import '../../widgets/general/size_box/v_size_box.dart';

class AboutTheAppPage extends StatelessWidget {
  const AboutTheAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeneralPage(
      body: AboutTheAppBodyContent(),
    );
  }
}

class AboutTheAppBodyContent extends StatelessWidget {
  const AboutTheAppBodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPageBody(
      title: S.of(context).aboutTheAppTitle,
      emj: '🦜',
      children: <Widget>[
        const Subtitle(
          title: 'ℹ What\'s this',
        ),
        CircleImgCard(
          title: 'Isla Calc',
          subtitle: '简约、现代、功能全面的计算器',
          img: 'images/logo.png',
          onPressed: () {},
        ),
        const Subtitle(
          title: '🥰 Contributor',
        ),
        CircleImgCard(
          title: 'icekylin',
          subtitle: 'A student of UoB',
          img: 'images/icekylin.png',
          onPressed: () {},
        ),
        const Subtitle(
          title: '👻 Chat & Contribute',
        ),
        IconCard(
          title: 'Source code',
          subtitle: 'Github',
          icon: const IconData(
            0xe885,
            fontFamily: 'Iconfont',
            matchTextDirection: true,
          ),
          onPressed: () {},
        ),
        const Subtitle(
          title: '📜 Licenses',
        ),
        IconCard(
          title: 'GPLv3',
          subtitle: 'Software',
          icon: const IconData(
            0xeba5,
            fontFamily: 'Iconfont',
            matchTextDirection: true,
          ),
          onPressed: () {},
        ),
        IconCard(
          title: 'CC-BY 4.0',
          subtitle: 'Documents',
          icon: const IconData(
            0xe600,
            fontFamily: 'Iconfont',
            matchTextDirection: true,
          ),
          onPressed: () {},
        ),
        const VSizeBox(),
      ],
    );
  }
}

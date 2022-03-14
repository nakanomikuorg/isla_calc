import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isla_calc/widgets/blurred_app_bar.dart';
import 'package:isla_calc/widgets/feature_selection_page_navigation_bar.dart';

import '../widgets/feature_selection_card.dart';

class FeatureSelectionPage extends StatefulWidget {
  const FeatureSelectionPage({Key? key}) : super(key: key);

  @override
  State<FeatureSelectionPage> createState() => _FeatureSelectionPageState();
}

class _FeatureSelectionPageState extends State<FeatureSelectionPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Container(
      child: const Scaffold(
        appBar: BlurredAppBar(),
        body: FeatureSelectionHomeContent(),
        bottomNavigationBar: FeatureSelectionPageNavigationBar(),
        extendBody: true,
        extendBodyBehindAppBar: true,
      ),
      color: Theme.of(context).colorScheme.surface,
    );
  }
}

class FeatureSelectionHomeContent extends StatefulWidget {
  const FeatureSelectionHomeContent({Key? key}) : super(key: key);

  @override
  State<FeatureSelectionHomeContent> createState() =>
      _FeatureSelectionHomeContentState();
}

class _FeatureSelectionHomeContentState
    extends State<FeatureSelectionHomeContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 16.0, 0.0, 0.0),
          child: Text(
            '艾拉计算器',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 0.0),
          child: Text(
            '常用功能',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        FeatureSelectionCommonCard('标准计算器', '基本计算', Icons.calculate_outlined),
        FeatureSelectionCommonCard('科学计算器', '类卡西欧布局', Icons.analytics_outlined),
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 0.0),
          child: Text(
            '其它功能',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        FeatureSelectionOtherCard('分数计算器', '分数键盘布局', Icons.ballot_outlined),
        FeatureSelectionOtherCard(
            '自定义函数', '自定义函数及键盘布局', Icons.favorite_border_rounded),
        FeatureSelectionOtherCard(
            '计算百科', '相关资料以及使用说明', Icons.free_breakfast_outlined),
        FeatureSelectionOtherCard(
            '关于应用', '版权及相关信息', Icons.info_outline_rounded),
        SizedBox(
          height: 16.0,
        )
      ],
    );
  }
}

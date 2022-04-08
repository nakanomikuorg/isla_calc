import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/common_widgets/blur_widget.dart';
import 'package:provider/provider.dart';

import '../../models/settings/theme_model.dart';

class FuncNavigationBar extends StatelessWidget {
  const FuncNavigationBar(this._currentPageIndex, this._setCurrentPage,
      {Key? key})
      : super(key: key);

  final int _currentPageIndex;
  final Function _setCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        var originalBgColor = ElevationOverlay.colorWithOverlay(
          Theme.of(context).colorScheme.surface,
          Theme.of(context).colorScheme.primary,
          8.0,
        );
        var bgColor = theme.isGaussianBlur
            ? originalBgColor.withOpacity(0.6)
            : originalBgColor;
        var transparentNavigationBar = TransparentNavigationBar(
          backgroundColor: bgColor,
          currentPageIndex: _currentPageIndex,
          setCurrentPage: _setCurrentPage,
          navigationDestinations: <NavigationDestination>[
            NavigationDestination(
              label: '常规计算',
              icon: Icon(Icons.analytics_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            NavigationDestination(
              label: '单位换算',
              icon: Icon(Icons.design_services_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            NavigationDestination(
              label: '特殊计算',
              icon: Icon(Icons.currency_pound_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            NavigationDestination(
              label: '专业领域',
              icon: Icon(Icons.satellite_alt_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
          ],
        );

        return theme.isGaussianBlur
            ? BlurWidget(
                child: transparentNavigationBar,
              )
            : transparentNavigationBar;
      },
    );
  }
}

class TransparentNavigationBar extends StatelessWidget {
  const TransparentNavigationBar({
    Key? key,
    required this.backgroundColor,
    required this.currentPageIndex,
    required this.setCurrentPage,
    required this.navigationDestinations,
  }) : super(key: key);

  final Color backgroundColor;
  final int currentPageIndex;
  final Function setCurrentPage;
  final List<NavigationDestination> navigationDestinations;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: backgroundColor,
      selectedIndex: currentPageIndex,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      onDestinationSelected: (i) => setCurrentPage(i),
      destinations: navigationDestinations,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/common_widgets/blur_widget.dart';

class FuncSelectionNavigationBar extends StatelessWidget {
  const FuncSelectionNavigationBar(this._currentPageIndex, this._setCurrentPage,
      {Key? key})
      : super(key: key);

  final int _currentPageIndex;
  final Function _setCurrentPage;

  @override
  Widget build(BuildContext context) {
    return BlurWidget(
      NavigationBar(
        backgroundColor: ElevationOverlay.colorWithOverlay(
          Theme.of(context).colorScheme.surface,
          Theme.of(context).colorScheme.primary,
          8.0,
        ).withOpacity(0.6),
        selectedIndex: _currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (i) => _setCurrentPage(i),
        destinations: <NavigationDestination>[
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
      ),
    );
  }
}

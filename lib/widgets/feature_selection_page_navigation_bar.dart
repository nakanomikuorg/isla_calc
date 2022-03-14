import 'dart:ui';

import 'package:flutter/material.dart';

class FeatureSelectionPageNavigationBar extends StatefulWidget {
  const FeatureSelectionPageNavigationBar({Key? key}) : super(key: key);

  @override
  State<FeatureSelectionPageNavigationBar> createState() =>
      _FeatureSelectionPageNavigationBarState();
}

class _FeatureSelectionPageNavigationBarState
    extends State<FeatureSelectionPageNavigationBar> {
  int _currentPageIndex = 0;

  void _setCurrentPage(int i) {
    setState(() {
      _currentPageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: NavigationBar(
          backgroundColor: ElevationOverlay.colorWithOverlay(
                  Theme.of(context).colorScheme.surface,
                  Theme.of(context).colorScheme.primary,
                  0.08)
              .withOpacity(0.6),
          selectedIndex: _currentPageIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: _setCurrentPage,
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
              label: '专有领域',
              icon: Icon(Icons.satellite_alt_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
          ],
        ),
      ),
    );
  }
}

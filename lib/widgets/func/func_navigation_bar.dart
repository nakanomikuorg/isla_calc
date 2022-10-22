import 'package:flutter/material.dart';
import 'package:isla_calc/widgets/general/decoration/blur_widget.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../models/settings/global_model.dart';

class FuncNavigationBar extends StatelessWidget {
  const FuncNavigationBar(this._currentPageIndex, this._setCurrentPage,
      {Key? key})
      : super(key: key);

  final int _currentPageIndex;
  final Function _setCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalModel>(
      builder: (context, theme, child) {
        var originalBgColor = ElevationOverlay.applySurfaceTint(
          Theme.of(context).colorScheme.surface,
          Theme.of(context).colorScheme.primary,
          2,
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
              label: S.of(context).funcHomePageNavigationTitle,
              icon: Icon(Icons.analytics_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            NavigationDestination(
              label: S.of(context).funcUnitConvTitle,
              icon: Icon(Icons.design_services_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            NavigationDestination(
              label: S.of(context).funcSpecialCalcTitle,
              icon: Icon(Icons.currency_pound_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            // NavigationDestination(
            //   label: S.of(context).funcProfessionalFieldTitle,
            //   icon: Icon(Icons.satellite_alt_outlined,
            //       color: Theme.of(context).colorScheme.onSurfaceVariant),
            // ),
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

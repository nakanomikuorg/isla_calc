import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:isla_calc/default/theme_info.dart';
import 'package:isla_calc/routes/routes.dart';
import 'package:provider/provider.dart';

import 'data/settings/global_data.dart';
import 'generated/l10n.dart';
import 'models/settings/global_model.dart';

/*

.___       .__           _________        .__
|   | _____|  | _____    \_   ___ \_____  |  |   ____
|   |/  ___/  | \__  \   /    \  \/\__  \ |  | _/ ___\
|   |\___ \|  |__/ __ \_ \     \____/ __ \|  |_\  \___
|___/____  >____(____  /  \______  (____  /____/\___  >
.        \/          \/          \/     \/          \/
大切な人と、いつかまた巡り会えますように
愿你有朝一日，能与珍爱之人再次相逢

Code licensed under GPLv3, documentation under CC BY-SA 4.0.
Made with love by ALL Contributors.
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return GlobalModel();
      },
      child: const ColorfulApp(),
    );
  }
}

class ColorfulApp extends StatefulWidget {
  const ColorfulApp({Key? key}) : super(key: key);

  @override
  State<ColorfulApp> createState() => _ColorfulAppState();
}

class _ColorfulAppState extends State<ColorfulApp> {
  @override
  void initState() {
    super.initState();
    _loadGlobalSettings();
  }

  void _loadGlobalSettings() async {
    Provider.of<GlobalModel>(
      context,
      listen: false,
    ).changeThemeMode(
      await GlobalData.getThemeMode(),
    );
    Provider.of<GlobalModel>(
      context,
      listen: false,
    ).changeGaussianBlur(
      await GlobalData.getIsGaussianBlur(),
    );
    Provider.of<GlobalModel>(
      context,
      listen: false,
    ).changeColor(
      await GlobalData.getColor(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalModel>(
      builder: (context, theme, child) {
        var themeMode = theme.themeMode;
        ThemeData lightTheme;
        ThemeData darkTheme;
        var seedColor = theme.color;

        if (themeMode == 0) {
          lightTheme = ThemeInfo.getThemeData(context, seedColor);
          darkTheme = ThemeInfo.getDarkThemeData(context, seedColor);
        } else if (themeMode == 1) {
          lightTheme = ThemeInfo.getThemeData(context, seedColor);
          darkTheme = lightTheme;
        } else {
          darkTheme = ThemeInfo.getDarkThemeData(context, seedColor);
          lightTheme = darkTheme;
        }

        return MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          initialRoute: '/',
          onGenerateRoute: (RouteSettings settings) {
            final String? name = settings.name;
            final Function? pageContentBuilder = routes[name];

            if (pageContentBuilder != null) {
              if (settings.arguments != null) {
                final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(
                    context,
                    arguments: settings.arguments,
                  ),
                );
                return route;
              } else {
                final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context),
                );
                return route;
              }
            } else {
              return MaterialPageRoute(
                builder: (context) => routes['/unimplemented']!(context),
              );
            }
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:isla_calc/routes/routes.dart';
import 'package:isla_calc/themes/theme_info.dart';
import 'package:provider/provider.dart';

import 'global_settings_data.dart';
import 'models/settings/theme_model.dart';

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
        return ThemeModel();
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
    Provider.of<ThemeModel>(context, listen: false).changeGaussianBlur(
      await GlobalSettingsData.getIsGaussianBlur(),
    );
    Provider.of<ThemeModel>(context, listen: false).changeColor(
      await GlobalSettingsData.getColor(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, theme, child) {
        var seedColor = theme.color;

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeInfo.getThemeData(context, seedColor),
          darkTheme: ThemeInfo.getDarkThemeData(context, seedColor),
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

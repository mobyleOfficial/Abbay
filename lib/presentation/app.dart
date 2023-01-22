import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/infrastructure/routes.dart';
import 'package:abbay/presentation/audiobook/view/audiobook_container.dart';
import 'package:abbay/presentation/main/main_container.dart';
import 'package:abbay/presentation/mini_player/view/mini_player_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        onGenerateRoute: (RouteSettings routeSettings) =>
            MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              default:
                return Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                );
            }
          },
        ),
        home: Stack(
          children: [
            MaterialApp(
              restorationScopeId: 'app',
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''), // English, no country code
              ],
              onGenerateTitle: (BuildContext context) =>
                  AppLocalizations.of(context)!.appTitle,
              theme: ThemeData(),
              darkTheme: ThemeData.dark(),
              //themeMode: settingsController.themeMode,
              onGenerateRoute: (RouteSettings routeSettings) =>
                  MaterialPageRoute<void>(
                settings: routeSettings,
                builder: (BuildContext context) {
                  switch (routeSettings.name) {
                    case initialRoute:
                      return const MainContainer();
                    case audiobookRoute:
                      {
                        final args = routeSettings.arguments as String;
                        return AudiobookContainer.create(args);
                      }
                    default:
                      return Container();
                  }
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MiniPlayerContainer.create(),
            ),
          ],
        ),
      );
}

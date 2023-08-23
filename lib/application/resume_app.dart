import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/application/theme/my_dark_theme.dart';
import 'package:resume_app/core/module/route_module.dart';

class MyApp extends StatefulWidget {
  final List<RouteModule> routeMoudules;
  final String initialRoute;

  const MyApp({
    super.key,
    required this.routeMoudules,
    required this.initialRoute,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My resume',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MyDarkTheme.colorScheme,
        textTheme: Theme.of(context).textTheme.copyWith(
              displayMedium: GoogleFonts.robotoMono(
                color: MyDarkTheme.textColor,
              ),
            ),
      ),
      themeMode: ThemeMode.dark,
      onGenerateRoute: _generateRoute,
      initialRoute: widget.initialRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) {
          return const Text('You should not be here!');
        },
        settings: settings,
      ),
    );
  }

  Route? _generateRoute(RouteSettings settings) {
    final routesMap = <String, Route>{};
    for (final routeModule in widget.routeMoudules) {
      final featureRouteMap = routeModule.get(
        routeSettings: settings,
      );
      routesMap.addAll(featureRouteMap);
    }
    return routesMap[settings.name];
  }
}

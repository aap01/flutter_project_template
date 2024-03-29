import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/application/theme/my_dark_theme.dart';
import 'package:resume_app/core/dependency/injector.dart';
import 'package:resume_app/core/module/localization_module.dart';

class MyApp extends StatefulWidget {
  final Map<String, Route Function(RouteSettings, Injector)> routesMap;
  final String initialRoute;
  final Injector injector;

  const MyApp({
    super.key,
    required this.routesMap,
    required this.initialRoute,
    required this.injector,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (cxt) => cxt.tr.myResume,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
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
    debugPrint('RouteName:${settings.name}');
    debugPrint('RouteArgs:${settings.arguments.toString()}');
    return widget.routesMap[settings.name]?.call(settings, widget.injector);
  }
}

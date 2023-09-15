import 'package:flutter/material.dart';
import 'package:resume_app/application/resume_app.dart';
import 'package:resume_app/core/config/config_holder.dart';
import 'package:resume_app/core/dependency/injector.dart';
import 'package:resume_app/core/feature_container/feature_container.dart';

abstract class AppRunner {
  FeatureContainer get featureContainer;
  String get initialRoute;
  ServerConfig get serverConfig;
  FeatureConfig get featureConfig;

  Future<void> _preRun() async {
    /// NOTE: initialize platform dependencies here
    /// for example: Firebase, Camera, WidgetsFlutterBinding
    WidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> run() async {
    await _preRun();
    final appInjector = AppInjector();
    final injectionList = <Future>[];
    ConfigHolder.init(
      serverConfig: serverConfig,
      featureConfig: featureConfig,
    );
    for (final e in featureContainer.getInjectionModules()) {
      injectionList.add(
        e.inject(
          injector: appInjector,
        ),
      );
    }
    await Future.wait(injectionList);
    runApp(
      MyApp(
        routeMoudules: featureContainer.getRouteModules(),
        initialRoute: initialRoute,
        injector: appInjector,
      ),
    );
  }
}

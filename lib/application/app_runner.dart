import 'package:flutter/material.dart';
import 'package:resume_app/application/resume_app.dart';
import 'package:resume_app/core/config/config_holder.dart';
import 'package:resume_app/core/dependency/auto_injector.dart';
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
    configureDependencies();
  }

  Future<void> run() async {
    await _preRun();
    final injector = AppInjector();
    ConfigHolder.init(
      serverConfig: serverConfig,
      featureConfig: featureConfig,
    );
    final injectionList = featureContainer
        .getInjectionModules()
        .map((e) => e.inject(injector: injector))
        .toList();
    final routesMap = featureContainer
        .getRouteModules()
        .map((e) => e.getRoutes())
        .reduce((value, element) => value..addAll(element));
    await Future.wait(injectionList);
    runApp(
      MyApp(
        routesMap: routesMap,
        initialRoute: initialRoute,
        injector: injector,
      ),
    );
  }
}

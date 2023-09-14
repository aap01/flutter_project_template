import 'package:flutter/material.dart';
import 'package:resume_app/application/resume_app.dart';
import 'package:resume_app/core/config/config_holder.dart';
import 'package:resume_app/core/dependency/injector.dart';
import 'package:resume_app/core/feature_container/feature_container.dart';
import 'package:resume_app/feature/profile/core/route/profile_route_module.dart';

abstract class AppRunner {
  final FeatureContainer featureContainer;

  AppRunner({
    required this.featureContainer,
  });

  Future<void> _preRun() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> run() async {
    await _preRun();
    final appInjector = AppInjector();
    final injectionList = <Future>[];
    ConfigHolder.init(
      serverConfig: ServerConfig.prod,
      featureConfig: FeatureConfig.prod,
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
        initialRoute: ProfileRouteModule.root,
        injector: appInjector,
      ),
    );
  }
}

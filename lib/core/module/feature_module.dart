import 'package:resume_app/core/module/injection_module.dart';
import 'package:resume_app/core/module/route_module.dart';

abstract class FeatureModule {
  RouteModule? get getRouteModule;
  InjectoionModule? get getInjectionModule;
}

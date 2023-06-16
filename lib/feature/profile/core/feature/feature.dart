import 'package:resume_app/core/module/feature_module.dart';
import 'package:resume_app/core/module/injection_module.dart';
import 'package:resume_app/core/module/localization_module.dart';
import 'package:resume_app/core/module/route_module.dart';
import 'package:resume_app/feature/profile/core/route/profile_route_module.dart';

class ProfileFeatureModule implements FeatureModule {
  @override
  RouteModule? get getRouteModule => ProfileRouteModule();

  @override
  InjectoionModule? get getInjectionModule => null;

  @override
  LocalizationModule? get getLocalizationModule => null;
}

import 'package:resume_app/application/app_runner.dart';
import 'package:resume_app/application/env/prod/prod_feature_container.dart';
import 'package:resume_app/core/config/config_holder.dart';
import 'package:resume_app/core/feature_container/feature_container.dart';
import 'package:resume_app/feature/profile/core/route/profile_route_module.dart';

class ProdAppRunner extends AppRunner {
  @override
  FeatureContainer get featureContainer => ProdFeatureContainer();

  @override
  FeatureConfig get featureConfig => FeatureConfig.prod;

  @override
  String get initialRoute => ProfileRouteModule.root;

  @override
  ServerConfig get serverConfig => ServerConfig.prod;
}

void main(List<String> args) {
  ProdAppRunner().run();
}

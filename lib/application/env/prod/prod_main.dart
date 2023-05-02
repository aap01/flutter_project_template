import 'package:resume_app/application/app_runner.dart';
import 'package:resume_app/application/env/prod/prod_feature_container.dart';

class ProdAppRunner extends AppRunner {
  ProdAppRunner()
      : super(
          featureContainer: ProdFeatureContainer(),
        );
}

void main(List<String> args) {
  ProdAppRunner().run();
}

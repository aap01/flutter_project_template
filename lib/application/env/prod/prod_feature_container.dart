import 'package:resume_app/core/feature_container/feature_container.dart';
import 'package:resume_app/feature/profile/core/feature/feature.dart';

class ProdFeatureContainer extends FeatureContainer {
  ProdFeatureContainer()
      : super(
          featureList: [
            ProfileFeatureModule(),
          ],
        );
}

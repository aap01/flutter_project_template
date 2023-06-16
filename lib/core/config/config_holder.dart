class ConfigHolder {
  static FeatureConfig? _featureConfig;
  static FeatureConfig get featureConfig => _featureConfig!;
  static ServerConfig? _serverConfig;
  static ServerConfig get serverConfig => _serverConfig!;
  ConfigHolder._init({
    required FeatureConfig featureConfig,
    required ServerConfig serverConfig,
  }) {
    _featureConfig = featureConfig;
    _serverConfig = serverConfig;
  }
  static void init({
    required FeatureConfig featureConfig,
    required ServerConfig serverConfig,
  }) =>
      ConfigHolder._init(
        featureConfig: featureConfig,
        serverConfig: serverConfig,
      );
}

enum ServerConfig {
  prod,
  dev,
  other,
}

enum FeatureConfig {
  prod,
  dev,
}

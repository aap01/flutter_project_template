class ConfigHolder {
  final ServerConfig serverConfig;
  final FeatureConfig featureConfig;
  ConfigHolder({
    required this.serverConfig,
    required this.featureConfig,
  });
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

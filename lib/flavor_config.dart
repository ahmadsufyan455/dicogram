enum FlavorType { free, paid }

class FlavorConfig {
  final FlavorType flavorType;

  static FlavorConfig? _instance;

  FlavorConfig({this.flavorType = FlavorType.free}) {
    _instance = this;
  }

  static FlavorConfig get instance => _instance ?? FlavorConfig();
}

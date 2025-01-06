import 'package:flutter/material.dart';

import '../env.dart';

enum Flavor { DEV, PRODUCTION }

extension FlavorExtension on Flavor {
  String get baseUrl {
    switch (this) {
      case Flavor.DEV:
        return DEVAPIURL;
      case Flavor.PRODUCTION:
        return PRODUCTIONAPIURL;
    }
  }
}

class FlavorValues {
  final String baseUrl;
  //Add other flavor specific values, e.g database name
  FlavorValues({required this.baseUrl});
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final BannerLocation location;
  final FlavorValues values;
  static FlavorConfig? _instance;

  factory FlavorConfig(
      {required Flavor flavor,
      required Color color,
      required BannerLocation location,
      required FlavorValues values}) {
    return _instance ??= FlavorConfig._(
        flavor, StringUtils.enumName(flavor.toString()), location, values);
  }

  FlavorConfig._(this.flavor, this.name, this.location, this.values);

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool isProduction() => _instance?.flavor == Flavor.PRODUCTION;
  static bool isDevelopment() => _instance?.flavor == Flavor.DEV;
}

class StringUtils {
  static String enumName(String enumToString) {
    List<String> paths = enumToString.split(".");
    return paths[paths.length - 1];
  }
}

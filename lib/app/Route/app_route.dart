import 'package:dota2_app/app/Model/hero_model.dart';
import 'package:dota2_app/app/UI/Hero_Screen/hero_screen.dart';
import 'package:flutter/material.dart';

import '../UI/home/home_screen.dart';
import 'route_name.dart';

class AppRoute {
  static MaterialPageRoute reoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RouteName.heroRoute:
        return MaterialPageRoute(
          builder: (context) => HeroScreen(
            heromodel: settings.arguments as HeroModel,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}

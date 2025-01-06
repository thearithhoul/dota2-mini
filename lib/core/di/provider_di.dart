import 'package:dota2_app/app/UI/Hero_Screen/hero_provider.dart';
import 'package:dota2_app/app/UI/home/home_provider.dart';
import 'package:dota2_app/app/UI/main_screen/main_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderDi {
  static List<SingleChildWidget> provider = [
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => MainProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => HeroProvider(),
    ),
  ];
}

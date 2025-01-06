import 'package:dota2_app/app/Route/app_route.dart';
import 'package:dota2_app/app/Route/my_navigator.dart';
import 'package:dota2_app/app/UI/home/home_screen.dart';
import 'package:dota2_app/util/image_contented.dart';
import 'package:dota2_app/app/UI/widgets/bottom_nav_bar_item.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bottomNavBarIcom = [
      ImageContented.homeIcon,
      ImageContented.itemIcon,
      ImageContented.menuIcon,
      ImageContented.heroIcon,
    ];

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        MyNavigator().pop();
      },
      child: Scaffold(
        body: Navigator(
          key: MyNavigator.navigatorKey,
          observers: [HeroController()],
          initialRoute: '/home',
          onGenerateInitialRoutes: (navigator, initialRoute) => [
            MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            ),
          ],
          onGenerateRoute: (settings) => AppRoute.reoute(settings),
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xff2D3539),
          ),
          child: Consumer<MainProvider>(
            builder: (context, value, child) {
              return Row(
                children: List.generate(
                  4,
                  (index) {
                    return BottomNavBarItem(
                      ontap: () {
                        value.seletedFunc(index);
                      },
                      isSeleted: value.seletedIndex == index,
                      imageSvg: bottomNavBarIcom[index],
                      width: MediaQuery.of(context).size.width / 4,
                      height: 70,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

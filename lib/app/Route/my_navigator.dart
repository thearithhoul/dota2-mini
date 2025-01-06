import 'package:flutter/material.dart';

class MyNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void pushName(String routeName, {Object? arg}) {
    navigatorKey.currentState?.pushNamed(routeName, arguments: arg);
  }

  void pop() {
    bool? canpop = navigatorKey.currentState?.canPop();
    if (canpop != null && canpop) {
      navigatorKey.currentState?.pop();
    } else {
      return;
    }
  }
}

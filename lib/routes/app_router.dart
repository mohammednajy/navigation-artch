import 'package:flutter/material.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static goToAndRemove({required String screenName}) {
    navigatorKey.currentState!.pushReplacementNamed(screenName);
  }

  static goTo({required String screenName, Object? arguments}) {
    navigatorKey.currentState!.pushNamed(screenName, arguments: arguments);
  }

  static back() {
    navigatorKey.currentState!.pop();
  }

  static mayBack() {
    navigatorKey.currentState!.maybePop();
  }
}

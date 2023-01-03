import 'package:exam_app/routes/screen_name.dart';
import 'package:exam_app/screens/home_screen.dart';
import 'package:exam_app/screens/settinges_screen.dart';
import 'package:exam_app/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenarator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    var result;
    switch (settings.name) {
      case ScreenName.splashScreen:
        result = const SplashScreen();
        break;
      case ScreenName.homeScreen:
        result = HomeScreen();
        break;
      case ScreenName.settingesScreen:
        final data = settings.arguments != null
            ? settings.arguments as List<String>
            : [];
        result = SettingesScreen(
          listData: data as List<String>,
        );
        break;

      default:
        result = const Scaffold(
          body: Center(
            child: Text('Wrong path'),
          ),
        );
    }
    return MaterialPageRoute(builder: (context) => result);
  }
}



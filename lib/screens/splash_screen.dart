import 'package:exam_app/routes/router_genrator.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';
import '../routes/screen_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 2),
        () => AppRouter.goToAndRemove(
            screenName: ScreenName.homeScreen));
    return Scaffold(
      body: Center(
        child: Text('splash Screen'),
      ),
    );
  }
}

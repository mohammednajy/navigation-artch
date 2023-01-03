import 'package:exam_app/routes/app_router.dart';
import 'package:exam_app/routes/router_genrator.dart';
import 'package:exam_app/routes/screen_name.dart';
import 'package:exam_app/utils/helper.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenarator.onGenerateRoute,
      initialRoute: ScreenName.splashScreen ,
      navigatorKey: AppRouter.navigatorKey ,
      scaffoldMessengerKey: AppHelper.snackBarKey,
    );
  }
}

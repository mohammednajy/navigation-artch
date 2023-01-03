import 'package:exam_app/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHelper {
  static final snackBarKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String message) {
    snackBarKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  static Future<bool?> showAlertDialog() async {
    return await showDialog(
        context: AppRouter.navigatorKey.currentContext!,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Are you sure'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx, true);
                  },
                  child: Text('yes')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx, false);
                  },
                  child: Text('no')),
            ],
          );
        });
  }
}

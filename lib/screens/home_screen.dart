import 'package:exam_app/utils/helper.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';
import '../routes/router_genrator.dart';
import '../routes/screen_name.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> listData = ['mohammed', 'ahmed', 'kamel'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        leading: IconButton(
            onPressed: () {
              AppRouter.mayBack();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Home Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              AppRouter.goTo(
                screenName: ScreenName.settingesScreen,
                arguments: listData,
              );
            },
            child: Text('go to'),
          ),
          ElevatedButton(
            onPressed: () {
              AppHelper.showSnackBar('this is snackbar');
            },
            child: Text('show snackbar'),
          ),
          ElevatedButton(
            onPressed: () async {
              final value = await AppHelper.showAlertDialog();
              print(value.toString());
            },
            child: Text('show alertdialog'),
          )
        ],
      ),
    );
  }
}

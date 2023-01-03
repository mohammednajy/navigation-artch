import 'package:exam_app/routes/router_genrator.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';

class SettingesScreen extends StatelessWidget {
  const SettingesScreen({required this.listData, super.key});
  final List<String> listData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Screen'),
        leading: IconButton(
            onPressed: () {
              AppRouter.mayBack();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.amber,
            )),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) => Text(listData[index]),
      ),
    );
  }
}

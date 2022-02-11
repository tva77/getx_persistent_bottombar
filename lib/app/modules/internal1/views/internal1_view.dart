import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/internal1_controller.dart';

class Internal1View extends GetView<Internal1Controller> {
  var args;
  Internal1View({Key? key, var this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('args internal = $args');
    return Scaffold(
      appBar: AppBar(
        title: Text('Internal1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Internal1View is working - args: $args',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

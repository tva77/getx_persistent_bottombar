import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tab2_controller.dart';

class Tab2View extends GetView<Tab2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Tab2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

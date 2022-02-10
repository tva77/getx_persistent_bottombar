import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tab3_controller.dart';

class Tab3View extends GetView<Tab3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab3View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Tab3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

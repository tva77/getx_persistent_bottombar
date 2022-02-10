import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/internal2_controller.dart';

class Internal2View extends GetView<Internal2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internal2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Internal2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
